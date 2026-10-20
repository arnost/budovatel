# Řazení podle české abecedy: č, ř, š, ž a ch jsou samostatná písmena,
# ostatní diakritika rozhoduje až při shodě.
module Jekyll
  module CeskeRazeni
    ABECEDA = %w[a b c č d e f g h ch i j k l m n o p q r ř s š t u v w x y z ž].freeze
    PORADI = ABECEDA.each_with_index.to_h
    BEZ_CARKY = { 'á' => 'a', 'ä' => 'a', 'ď' => 'd', 'é' => 'e', 'ě' => 'e', 'í' => 'i', 'ľ' => 'l', 'ĺ' => 'l',
                  'ň' => 'n', 'ó' => 'o', 'ô' => 'o', 'ö' => 'o', 'ť' => 't', 'ú' => 'u', 'ů' => 'u', 'ü' => 'u',
                  'ý' => 'y', 'ł' => 'l', 'ś' => 's', 'ć' => 'c', 'ń' => 'n', 'ź' => 'z', 'ż' => 'z' }.freeze

    def self.klic(text)
      t = text.to_s.downcase.strip
      prvni = t.chars.map { |c| BEZ_CARKY.fetch(c, c) }.join
      # číslice před písmeny, mezery a interpunkce se ignorují
      znaky = prvni.scan(/ch|./m).map { |z| PORADI.fetch(z) { z =~ /\d/ ? z.to_i - 20 : z =~ /[[:alpha:]]/ ? 100 + z.ord : nil } }
      znaky.compact + [-30] + t.codepoints
    end

    # "S. K. Neumann" -> "Neumann"; u více autorů rozhoduje první z nich
    def self.prijmeni(jmeno)
      j = jmeno.to_s.sub(/\(.*?\)/, '').strip
      return j if j =~ /\A[[:lower:]]/ # kolektiv autorů, oddíl Rudých průkopníků
      j = j.split(',').first.to_s.strip
      casti = j.split(/\s+a\s+/)
      j = casti.first if casti.size > 1 && casti.all? { |c| c.include?(' ') }
      j.split(/\s+/).last.to_s
    end

    def ceske_razeni(pole)
      Array(pole).sort_by { |x| CeskeRazeni.klic(x) }
    end

    def ceske_razeni_autoru(pole)
      Array(pole).sort_by { |x| CeskeRazeni.klic(CeskeRazeni.prijmeni(x)) + [-40] + CeskeRazeni.klic(x) }
    end
  end
end

Liquid::Template.register_filter(Jekyll::CeskeRazeni)
