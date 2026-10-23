\version "2.24.0"
\header {
        title = "Honácká"
        composer = "Z Valašska před rokem 1694"
}

melody =  \relative c'' {
        \clef treble
        \time 3/2 \key g \major
d4 c b2 d | a4 a a1 | d4 c b2 d | a4 a a1 |
a4 b c2 c | b4 a g1 | a4 g a2 b | g4 g g1 \bar "|."
}

text = \lyricmode {
Pa -- chol -- ko -- vé na ho -- ry do tej ko -- zí o -- bo -- ry;
juž sa bu -- ček ze -- le -- ná, ja -- rab sa juž čer -- ve -- ná.
}

accompaniment =\chordmode {
g1. a1 d2:7 g1. a1 d2:7
a1:m d2:7 g1. a2:m d1:7 g1.
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
        \midi { \tempo 2=60 }
}
