\version "2.24.0"
\header {
        title = "Píseň o arcibiskupu Zbyňkovi"
}

melody = \relative c' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
\repeat volta 2 {
d4 c d e f f e2\fermata \bar "|"
\once \override NoteHead.font-size = #-3 \parenthesize f8 f4 a a g \bar ""
g f e2\fermata \bar "|"
f8 g4 e f d f e d2\fermata \bar "|"
b4 c d e f( e) d2\fermata
}
c'8^"R." d4 b c a \bar ""
g f e2\fermata \bar "|"
e8 f4 a a g g f e2\fermata \bar "|"
g4 e f d f e d2\fermata \bar "|"
b4 c d e f( e) d2\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Slyš -- te, ry -- tie -- ři bo -- ží,
_ při -- prav -- te se již k~bo -- ji,
chvá -- lu bo -- ží ku po -- ko -- ji
sta -- teč -- ně zpie -- vaj -- te!
A -- by Čte -- nie ne -- ká -- za -- li,
pá -- ny svě -- ta a -- by by -- li,
a -- po -- što -- ly v~smiech mě -- li,
jimž pil -- ně při -- ká -- zal.
}

textb = \lyricmode {
An -- ti -- kri -- stus již cho -- dí,
za -- pá -- le -- nú pé -- či vo -- dí,
_ kněž -- stvo hr -- dé již plo -- dí,
pro Buoh zna -- me -- naj -- te.
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats \new Voice { \melody }
        \midi { \tempo 4=100 }
}
