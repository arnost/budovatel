\version "2.24.0"
\header {
        title = "Říjnová"
        composer = "N. Fomenko"
        poet = "N. Najďonová, český text O. Bárta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Čile" 4=112
d4 e | fis4. g8 | e4 a | fis r |
d4 e | fis4. g8 | e4 a | d, r \bar ".|:"
b'4 g8. b16 | a4 d, | b'8. a16 g8 b | a4 d, \breathe |
g8. fis16 e8 d | e4 a | d, fis | d r \bar "|."
}

text = \lyricmode {
Dnes je nám zas ve -- se -- lo,
pí -- sni -- čky si zpí -- vá -- me.
Raz, dva, do kro -- ku, do po -- cho -- du pěj -- me,
říj -- no -- vou už sla -- vnost ví -- tej -- me!
}

accompaniment = \chordmode {
d2 d a d
d2 d a d
g2 d g d
a2:7 a:7 d d
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
