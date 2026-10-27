\version "2.24.0"
\header {
        title = "Krasnyj partizan"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Mírně" 4=80
a4. g8 f8( d4) e8 |
f8 g a d, g( bes) a( g) |
c8 c c a c bes a g |
a8 r c4~( c8 a bes c) |
\repeat volta 2 {
d4.( c8) bes( c) d4 |
bes8( d) c bes a( c4) a8 |
g8 g g d a' a a g16( a) |
}
\alternative {
{ d,2 r8 a'( bes c) }
{ d2. r4 }
}
\bar "|."
}

text = \lyricmode {
V~čis -- tom po -- lje,
po -- lje pod ra -- ki -- toj,
gdě klu -- bit -- sja po no -- čam tu -- man,
ej __
tam le -- žit v~zem -- lě za -- ry -- tyj,
tam scha -- ro -- něn kras -- nyj par -- ti -- zan,
ej __
zan.
}

accompaniment = \chordmode {
d1:m
d2:m g2:m
f2 a4:m c4
f4 f2.:7
\repeat volta 2 {
bes2 g2:m
c2:7 f2
g2:m a2:7
}
\alternative {
{ d2:m f2 }
{ d1:m }
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
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=80 }
}
