\version "2.24.0"
\header {
        title = "Tři tankisti"
        composer = "Daniil a Dmitrij Pokrass"
        poet = "B. Laskin, český text Jelena Holečková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Pochodem" 4=112
\partial 4 d8 e |
fis4. fis8 g e b' g | fis4 fis~ fis8 r b cis | d4. b8 cis cis b ais |
b2~ b8 r d b | a4 fis b8 b a b | g4 e~ e8 r d e | fis4. fis8 cis'8. cis16 b8 ais |
b2~ b8 r d b | a4 fis b8 b a b | g4 e~ e8 r d e | fis4. fis8 cis'8. cis16 b8 ais |
b2~ b8 r r4 \bar "|."
}

text = \lyricmode {
Mrač -- no níz -- ké nad hra -- ni -- cí váz -- ne,
drs -- ný kraj a ne -- po -- hnu -- tý klid.
Tam, kde sklá -- ní A -- mur bře -- hy sráz -- né,
kro -- ky strá -- že vlas -- ti sly -- šet znít.
Tam, kde sklá -- ní A -- mur bře -- hy sráz -- né,
kro -- ky strá -- že vlas -- ti sly -- šet znít.
}

accompaniment = \chordmode {
\partial 4 s4
b2:m e2:m | b1:m | b2:m fis2 |
b2..:m g8 | d2 b2:7 | e1:m | b2:m fis2 |
b2..:m g8 | d2 b2:7 | e1:m | b2:m fis2 |
b1:m
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
