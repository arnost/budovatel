\version "2.24.0"
\header {
        title = "Mi smo mladi skojevci"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key f \major \tempo "Volným pochodem" 4=96
f8 f f4. a8 | c a f4.( a8) |
d8 d d4. c8 | c4 bes r |
e8 e e4. e8 | e e e4 r |
e8 d c4. bes8 | bes4 a r |
\time 2/4
\repeat volta 2 {
f8 f f4 | f8 f f4 | g8 f e d | c c c4 |
g'4 g8 g | c2 | c8 bes a g | f4 r |
}
}

text = \lyricmode {
My smo mla -- di sko -- jev -- ci,
par -- ti -- ja nas vo -- di,
sa -- mo na -- pred dru -- go -- vi,
ko pu -- noj slo -- bo -- di.
Je -- dan dva, je -- dan dva,
o -- mla -- di -- na Ti -- to -- va,
kre -- če na rad,
zo -- ve ob -- no -- va.
}

accompaniment = \chordmode {
f2. f2. bes2. f4 c2
c2.:7 c2.:7 c2.:7 c4:7 f2
\repeat volta 2 {
f2 f2 c2:7 c2:7
c2:7 c2:7 c2:7 f2
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
        \midi { \tempo 4=96 }
}
