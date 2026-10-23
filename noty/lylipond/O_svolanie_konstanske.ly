\version "2.24.0"
\header {
        title = "O svolánie Konstanské"
}

melody = \relative c'' {
        \clef treble
        \key c \major
        \time 4/4
        \omit Staff.TimeSignature
c4 d e e | f f b,2 | e4 e d c | b c a2 |
c4 c d c | b c a2 | g4 g g f | e f d2 |
f4 e f g | a( g) f2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ó svo -- lá -- nie Kon -- stan -- ské,
jenž sě na -- zie -- váš sva -- té,
kak si bez o -- patr -- no -- sti
shla -- di -- lo bez mi -- lo -- sti
člo -- vě -- ka sva -- té -- ho.
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \new Voice { \melody }
        \midi { \tempo 4=96 }
}
