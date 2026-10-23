\version "2.24.0"
\header {
        title = "Píseň o pravdě"
}

melody = \relative c'' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
c4 a c e d b c a\fermata \bar "|"
g b c \bar ""
a g e8 e f4 d\fermata \bar "|"
f8 f a a e4 \bar ""
e8 d4\fermata \bar "|"
g b c a g f f8 e2\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pra -- vdo mi -- lá, tie -- žem te -- be,
pročs od nás vstú -- pi -- la do ne -- be?
Ko -- mus nás po -- ru -- či -- la,
tie -- žem te -- be, Prav -- do mi -- lá!
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
        \midi { \tempo 4=100 }
}
