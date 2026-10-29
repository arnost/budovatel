\version "2.24.0"
\header {
        title = "Tramvaj"
        composer = "Michail Jordanskij"
        poet = "Olga Vysotská, český text O. Bárta"
}

melody =  \relative c' {
        \clef treble
        \time 3/8 \key d \major \tempo "Živě" 8=176
\repeat volta 2 {
d4 fis8 | a4 fis8 | a4 cis8 | a4 r8 | g4 a8 | g4 e8 | d4. | d4. \breathe |
}
\repeat volta 2 {
e4 e8 | fis4 fis8 | g4 g8 | fis4 r8 | e4 e8 | fis4 d8 | e4. | e4. |
}
a4^"(rec.)" a8 | a4 a8 | fis4 d8 | e4 r8 | d4 d8 | d4 r8 | d4 d8 | d4 r8 \bar "|."
}

text = \lyricmode {
Tram -- vaj u -- li -- cí le -- tí, ko -- ně už před -- há -- ní.
Ne -- lel -- kuj -- te tu, dě -- ti, po -- zor před tram -- va -- jí!
Bim, bim, bim, bim, u -- hý -- bej! Na tram -- vaj po -- zor dej!
}

accompaniment = \chordmode {
\repeat volta 2 {
d4. d d d a:7 a:7 d d
}
\repeat volta 2 {
a4. d:7 g d a d a a
}
a4.:7 a:7 d a:7 g g d d
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
        \midi { \tempo 8=176 }
}
