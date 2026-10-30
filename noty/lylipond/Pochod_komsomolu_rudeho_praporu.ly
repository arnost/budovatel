\version "2.24.0"
\header {
        title = "Pochod Komsomolu Rudého praporu"
        composer = "Herman Žukovskyj"
        poet = "Oleksa Juščenko, český text Jelena Holečková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key e \minor \tempo "Pochodem" 4=112
\repeat volta 2 {
e4. fis8 c'8 c g a | b4( a8[ b]) e,4 r |
a4 g8( fis) e4 d | g8. g16 g8 a d4 d8 e |
d4. c8 b4 e,8 e | b'4. a8 g4 fis8 e |
d4 d' d e | b2~ b8 r b,4 |
b'4. b8 b4 a | e4 e r e8 e |
e'4. e8 d4 c8([ b]) | a2. a8 a |
d4. c8 b4 a | b8. a16 g8 a b4 e,8 e |
d'8 c b a g4 fis | e4.( fis8 g4) e'8 e |
d4. c8 b4 a | b8. a16 g8 a b4 e,8 e |
}
\alternative {
  { d'8^\markup \italic "na pokračování" c b a g4 fis | e2~ e8 r r4 }
  { d'8^\markup \italic "Konec" c b a g4 b | e2~ e4 r4 \bar "|." }
}
}

text = \lyricmode {
Slun -- ce las -- ka -- vě nám sví -- tí,
o -- za -- řu -- je drá -- hy na -- šich cest,
na ten krás -- ný kraj, rod -- né vlas -- ti ráj,
li -- je ště -- stí zla -- to hvězd.
Jak rá -- do srd -- ce mla -- dé,
jak si rá -- do za -- zpí -- vá,
pla -- ne nad Ko -- mu -- nou zá -- ře ví -- těz -- ná,
Mo -- skva k~jed -- no -- tě nás vy -- zý -- vá,
pla -- ne nad Ko -- mu -- nou zá -- ře ví -- těz -- ná,
Mo -- skva
k~jed -- no -- tě nás vy -- zý -- vá.
K~jed -- no -- tě nás vy -- zý -- vá.
}

accompaniment = \chordmode {
\repeat volta 2 {
s2 c2 | b2:7 e2:m |
a2:m d2 | g2 d4 g4 |
b2:7 e2:m | e1:m |
d1 | g1 |
b1:7 | e1:m |
e1:7 | a1:m |
d2:7 g4 b4:7 | e1:m |
a2:m e4:m b4:7 | e1:m |
d2:7 g4 b4:7 | e1:m |
}
\alternative {
  { a2:m e4:m b4:7 | e1:m }
  { a2:m e4:m b4:7 | e1:m }
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
