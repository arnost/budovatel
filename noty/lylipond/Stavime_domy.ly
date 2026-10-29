\version "2.24.0"
\header {
        title = "Stavíme domy"
        composer = "F. Zrno"
        poet = "V. Merhautová"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Rázně" 4=112
fis8 g a4 a fis | e a a fis \breathe | fis8 g a4 b g | a fis fis r |
fis4 g8 a b4 b | a g fis e \breathe | fis a8 g fis4 g | fis e d r \bar "|."
}

text = \lyricmode {
Sta -- ví -- me do -- my po -- dle plá -- nu ry -- chle -- ji ne -- žli ze -- dní -- ci.
Po -- sta -- vi -- li jsme vel -- kou brá -- nu a ce -- lou no -- vou u -- li -- ci.
}

accompaniment = \chordmode {
d1 a2 d d g d1
b2:m g a1:7 d a4:7 a:7 d2
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
