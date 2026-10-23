\version "2.24.0"
\header {
        title = "Hospodine, pomiluj ny"
}

melody = \relative c'' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
c2 d d d c c( b) a a \bar "|"
d d d b( a) \bar ""
c c( b) a( b) c \bar "|"
c d d c( b) a a( b) c \bar "|"
d d c c b( c) d \bar "|"
d d c c( b) \bar ""
a( b) c c c \bar "|"
d d d d d c c( b) \bar "|"
a a( b) c c c \bar "|"
c c c c c c \bar "|."
}

text = \lyricmode {
Hos -- po -- di -- ne, po -- mi -- luj ny,
Je -- zu Kris -- te,
po -- mi -- luj ny,
ty spa -- se vše -- ho mi -- ra,
spa -- siž ny i u -- slyš,
Hos -- po -- di -- ne,
hla -- sy na -- še,
daj nám všem Hos -- po -- di -- ne,
žizň a mír v~ze -- mi,
Kr -- leš, Kr -- leš, Kr -- leš.
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
        \midi { \tempo 2=60 }
}
