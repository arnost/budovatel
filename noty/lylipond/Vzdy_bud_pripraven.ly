\version "2.24.0"
\header {
        title = "Vždy buď připraven"
        composer = "Děškin"
        poet = "Alexandr Žarov, český text Josef Urban"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Pochodem" 4=108
g4 b8. d,16 | g4 d | \tuplet 3/2 { g4 a8 } \tuplet 3/2 { b8[( a]) g } | a4 d \breathe |
a4 b8. b16 | d4. c8 | b4 a8. g16 | a4 d, \breathe |
g4 b8. d,16 | g4 d | \tuplet 3/2 { g4 a8 } \tuplet 3/2 { b8[( a]) g } | a4 d \breathe |
e4 \tuplet 3/2 { c8[( b]) a } | b4 d8. d16 | a4 b8. b16 | g2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Za -- plá -- po -- lej -- te, mo -- _ dra -- vé no -- ci,
dě -- ti děl -- ní -- ků, po -- vstaň -- te vše -- chny!
Blí -- ží se rá -- no, ja -- _ sní se den! _
Na -- še je he -- slo: „Vždy buď při -- pra -- ven!“
}

accompaniment = \chordmode {
g2 d:7 e4:m g d2 a:m g4. c8 g4 a:7 d2:7
g2 d:7 e4:m g d2 c4 a:m g2 a4:m d:7 g2
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
        \midi { \tempo 4=108 }
}
