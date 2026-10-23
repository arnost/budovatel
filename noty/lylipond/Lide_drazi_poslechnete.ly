\version "2.24.0"
\header {
        title = "Lidé drazí, poslechněte"
        composer = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Živě" 4=112
d8 fis a a | b a g fis | a a g fis | e4 e |
e8 fis g g | a g fis e | a g fis e | d4 d \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Li -- dé dra -- zí, po -- slech -- ně -- te,
všec -- ko kři -- čí, já -- sá,
teď je ji -- ný ži -- vot v~Klad -- ně,
bo -- že, to je krá -- sa!
}

accompaniment = \chordmode {
d2 | d2 | d2 | a2 |
a2 | a2 | a2 | d2 |
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
