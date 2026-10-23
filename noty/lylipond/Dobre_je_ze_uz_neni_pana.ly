\version "2.24.0"
\header {
        title = "Dobre je, že už néni pána"
        composer = "O. Horký"
        poet = "Anežka Gorlová"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key a \major \tempo "Volně, výrazně" 4=72
\repeat volta 2 {
e8 e4. | a4 r | b8 b4. | cis4 r | b4 cis | d4 cis | b2 | cis4 r |
}
fis,8 gis a4 | gis8 fis4. | e4 r | fis8 gis a4 | gis8 fis4. | e4 r |
e8 d'4. | cis8 b4. | a2 | a4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Do -- bre je, do -- bre je, že už né -- ni pá -- na,
už nám ne -- po -- rú -- čá, už nám ne -- po -- rú -- čá
sta -- ro -- dáv -- ný ga -- zda.
}

accompaniment = \chordmode {
\repeat volta 2 {
e2 | a2 | b2:m | fis2:m | b2:m | b2:m | e2 | a2 |
}
fis2:m | fis2:m | e2 | fis2:m | fis2:m | e2 |
e2:7 | e2:7 | a2 | a2 |
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
        \midi { \tempo 4=72 }
}
