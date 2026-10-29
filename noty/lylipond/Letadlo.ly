\version "2.24.0"
\header {
        title = "Letadlo"
        composer = "Michail Rauchverger"
        poet = "Olga Vysotská, český text O. Bárta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Živě" 4=126
d8 d e d | g a b4 | c8 c b a | d4 b8 b \breathe |
d,8 d e d | g a b4 | c8 c b a | g4 g8 g \breathe |
\repeat volta 2 {
d8 d e d | g a b4 | c8 c b a | d4 b \breathe |
d,8 d e d | g a b4 | c8 c b a | g4 g \breathe |
}
}

text = \lyricmode {
Le -- tí, le -- tí le -- ta -- dlo, ra -- do -- stně mu má -- vá -- me,
je nám do -- bře, ve -- se -- lo, pí -- sni -- čku si zpí -- vá -- me.
\set stanza = "2."
V~o -- bla -- cích hřmí mo -- to -- ry, let -- ce ne -- po -- stra -- ší,
nad le -- sy a nad ho -- ry ja -- ko pták se vzná -- ší.
}

textb = \lyricmode {
\repeat unfold 28 { \skip 1 }
\set stanza = "3."
A za chví -- li o -- dlé -- tá, už se ztrá -- cí v~dá -- li,
prá -- vě chla -- pci, dě -- vča -- ta pí -- seň do -- zpí -- va -- li.
}

accompaniment = \chordmode {
d2:7 g d:7 g
d2:7 g d c4 g
\repeat volta 2 {
d2:7 g d:7 g
d2:7 g4 e:7 a:m d:7 g2
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
        \midi { \tempo 4=126 }
}
