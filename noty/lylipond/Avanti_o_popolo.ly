\version "2.24.0"
\header {
        title = "Avanti o popolo"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Živě" 4=112
\partial 16*5
\repeat volta 2 {
d16 g8. a16 |
b8. b16 b4 ~ | b8. a16 g8. a16 | b4 b4 ~ | b8. b16 c8. b16 | b4 a4 ~ |
}
\alternative {
{ a8. a16 b8. a16 | a4 g4 ~ |
  g8. }
{ \set Timing.measurePosition = #ZERO-MOMENT
  a8. c16 b8. a16 | g4 r4 | }
}
b4 b8. b16 | b8 g8( r16 \parenthesize a16) b8 | e4 b4 | a2 |
a4 a8. a16 | a8 fis8( r16 \parenthesize g16) a8 | b4 a4 | g2 |
b4 b8. b16 | b8 g8( r16 \parenthesize a16) b8 | c4 d4 | e4.. e16 |
e8. e16 e8 e8 | d8 d8 d8 d8 | fis4 fis4 | g2 \bar "|."
}

text = \lyricmode {
A -- van -- ti~o po -- po -- lo,
al -- la ris -- cos -- sa!
Ban -- die -- ra Ros -- sa,
Ban -- die -- ra Ros -- sa!
tri -- on -- fe -- rà!
Ban -- die -- ra Ros -- sa tri -- on -- fe -- rà!
Ban -- die -- ra Ros -- sa tri -- on -- fe -- rà!
Ban -- die -- ra Ros -- sa tri -- on -- fe -- rà!
Ev -- vi -- va~il Co -- mu -- nis -- mo e la Li -- ber -- tà!
}

accompaniment = \chordmode {
\partial 16*5
\repeat volta 2 {
s16*5 g2 g g g d
}
\alternative {
{ d2 g2 g8. }
{ d2 g2 }
}
g2 g d d
d2 d g g
g2 g c c
d2 g d g
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
