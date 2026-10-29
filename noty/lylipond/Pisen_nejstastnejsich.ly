\version "2.24.0"
\header {
        title = "Píseň nejšťastnějších"
        composer = "A. Alexandrov"
        poet = "N. Sakonská, český text K. Tachovský"
}

melody = \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Nepříliš rychle" 4=96
b4\mf b8 c | d4 b8 a | g4 fis8 e | d2 \breathe |
e4 g8 a | e4 g8 a | fis4 a8 b | g2 \breathe |
a4 a8 g | fis4 e | a4 a8 g | fis4 e \breathe |
a4 fis8 a | b4 a | g4 fis8 e | d2 |
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
To ryb -- ky v~po -- to -- ce ne -- šplou -- cha -- jí,
to u nás v~par -- ku si dě -- ti hra -- jí,
v~nej -- ve -- se -- lej -- ším, v~nej -- lí -- be -- zněj -- ším,
v~nej -- ra -- do -- stněj -- ším par -- ku hra -- jí.
}

accompaniment = \chordmode {
g2 g c d:7
a2:m a:m d:7 g
d2 c d c
d2 g4 d e:m a:7 d2
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
        \midi { \tempo 4=96 }
}
