\version "2.24.0"
\header {
        title = "Pochod 1. máje"
        composer = "E. F. Burian"
        poet = "E. F. Burian"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
\partial 4 c4 |
\repeat volta 2 {
f4 g a bes | a4. g8 f4 g | a4. g8 a4 bes | c bes a bes8 a |
g4 a8 f g4 a | g2 r8 a g f | c'4 c c c | c1 |
g4 g g r8 g | a4 f g r | g g8 g g4 r | a f g c, |
f g a bes | a4. g8 f4 g | a4. g8 a4 bes | c bes a bes8 c |
d4 d8 c d4 e | f4 r r8 f e d | c4 d c bes | a r r bes8 c |
d4 d8 c d4 e | f4 r r8 bes, a g | a4 f c' c, | f r r2 |
}
}

text = \lyricmode {
\set stanza = "1."
Na ce -- lém svě -- tě v~po -- cho -- du za prá -- ci, chléb a svo -- bo -- du
ru -- dý pra -- por se zve -- dá výš. O je -- den máj je náš cíl blíž.
Ne -- u -- hnem před fa -- ši -- smem! Do bo -- je jdem pro -- ti všem!
Na ce -- lém svě -- tě v~po -- cho -- du za prá -- ci, chléb a svo -- bo -- du
prv -- ní máj do bo -- je vždy veď za no -- vý a krás -- něj -- ší svět!
Prv -- ní máj do bo -- je vždy veď za no -- vý a krás -- něj -- ší svět!
}

textb = \lyricmode {
\set stanza = "2."
Je -- den z~nás ne -- smí zů -- stat stát dří -- ve než pad -- ne sta -- rý řád.
Pak bu -- dem mo -- ci vy -- sta -- vět na je -- ho tros -- kách no -- vý svět.
Ne -- u -- hnem před fa -- ši -- smem! Do bo -- je jdem pro -- ti všem!
Šes -- ti -- na svě -- ta v~roz -- kvě -- tu! Do bo -- je za svět so -- vě -- tů!
Ru -- dý pra -- por se zve -- dá výš! O je -- den máj je náš cíl blíž!
Ru -- dý pra -- por se zve -- dá výš! O je -- den máj je náš cíl blíž!
}

accompaniment = \chordmode {
\partial 4 s4 |
\repeat volta 2 {
f2. c4:7 | f1 | f2. c4:7 | f4 c:7 f g8:m d:m |
c4 f c f | c2 c8 f4. | c1 | c1 |
c1 | f4 d:m c2 | c1 | f4 d:m c2 |
f4 c f bes | c2:7 f | f4. c8 f4 bes | f4 g:m d:m g8:m f |
bes2. c4 | f2 f8 d:m a:m bes | f4 bes f g:m | d2. g8:m f |
bes4. f8 bes4 c | f2 f8 bes f/c c | f2/c c4 c:7 | f1 |
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
