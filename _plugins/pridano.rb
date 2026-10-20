# Datum přidání každé písně, básně, stati a obrázku podle historie gitu
# (první commit, ve kterém se soubor objevil; přejmenování ani změna přípony datum nemění).
# Výsledek je v page.pridano a používá ho stránka Nově znárodněno.
require 'open3'
require 'time'

module Pridano
  KOLEKCE = %w[pisne poezie state obrazky].freeze

  def self.stem(path)
    path.sub(/\.[^.\/]+\z/, '')
  end

  def self.z_gitu(zdroj)
    out, status = Open3.capture2('git', '-C', zdroj, 'log', '--reverse', '-M', '--name-status',
                                 '--format=%x00%aI', '--', *KOLEKCE.map { |k| "_#{k}" })
    return {} unless status.success?
    data = {}
    datum = nil
    out.each_line do |line|
      line = line.chomp
      if line.start_with?("\0")
        datum = Time.parse(line[1..])
      elsif (m = line.match(/\A(A|R\d*)\t(.+)\z/))
        cesty = m[2].split("\t")
        nova = stem(cesty.last)
        stara = cesty.size > 1 ? stem(cesty.first) : nova
        data[nova] ||= data[stara] || datum
      end
    end
    data
  rescue StandardError
    {}
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  data = Pridano.z_gitu(site.source)
  Pridano::KOLEKCE.each do |k|
    next unless site.collections[k]
    site.collections[k].docs.each do |doc|
      rel = Pridano.stem(doc.relative_path)
      doc.data['pridano'] ||= data[rel] || File.mtime(doc.path)
    end
  end
end
