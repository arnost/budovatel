\version "2.24.0"
\header {
        title = "Na Lhoteckém panství"
        composer = "lidová"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key g \major \tempo "Rychle" 4=160
g'4 g a | b b c | d d d | \acciaccatura d8 c4 b2 |
d4 d d | \acciaccatura d8 c4 b2 | b8[( c]) d4 d | \acciaccatura d8 c4 b8[( a]) g[( fis]) |
g4 g a | \acciaccatura g8 fis4 d2 | e4 e fis | fis g2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Na Lho -- tec -- kém pan -- ství chle -- ba ne -- ma -- jí,
chle -- ba ne -- ma -- jí; kdo tam pu -- de slou -- žit,
ten se ne -- na -- jí, ten se ne -- na -- jí.
}

accompaniment =\chordmode {
g2 d4 g2 c4 g2. \grace s8 d4 g2
g2. \grace s8 c4 g2 g2. \grace s8 c2.
g2 d4 \grace s8 d4 g2 a2:m d4 d4:7 g2
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
        \midi { \tempo 4=160 }
}
