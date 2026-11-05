\version "2.24.0"
\header {
        title = "Píseň albánské armády"
        composer = "Dhora Leka"
        poet = "Český text Josef Urban"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Marziale" 4=100
\partial 4 r8 d8 |
d4. d8 f8. f16 g8. g16 | a2 a4 r8 a8 |
d'4. c'8 bes8. a16 g8. f16 | a2 a4 r8 d8 |
d4. d8 f8. f16 g8. g16 | a2 a4 r8 a8 |
a4. bes8 a8 g8 f8 e8 | d2 d4 r4 |
d4 d8. e16 f8. e16 d8. f16 | e2 a,4 ~ a,8 r8 |
d4 d8. e16 f8. e16 d8. f16 | a2 ~ a4 r4 |
\repeat volta 2 {
  g4 g8. a16 bes8. bes16 a8. g16 | d'4 ( bes4 ) a2 |
  g4 f8. e16 g8. g16 f8. e16 | d2 ~ d4 r4 |
}
c'4 c'8. c'16 c'8. a16 f8. a16 | c'2 c'4 ~ c'8 \breathe c'8 |
e'4. d'8 c'8. d'16 bes8. c'16 | a2 ~ a8 r8 f8. f16 |
\repeat volta 2 {
  d'2 c'8. c'16 c'8. c'16 | f'4 ( c'4 ) a4 \breathe c'4 |
  d'4 bes4 g8. g16 g8. g16 |
}
\alternative {
  { f2. \breathe f8. f16 }
  { f2 ~ f4 }
}
\bar "|."
}

text = \lyricmode {
Hle, vlaj -- ka svo -- bo -- dy se zdví -- há
a prou -- dem kr -- ve ru -- dě sví -- tí,
jak v~ní se he -- slo bo -- je mí -- há,
jen hrů -- zu hor -- dy vra -- hů cí -- tí.
Ar -- má -- da v~ú -- tok již se dá -- vá,
ta pů -- jde bez pře -- ká -- žek dál,
fa -- ši -- sty zni -- čit je -- jí slá -- va,
svě -- tlý ji ve -- de i -- de -- ál.
Ar -- má -- da pe -- vně pu -- šky sví -- rá,
jde ráz -- ně fa -- ši -- stů roj smést,
jha se zbýt, ná -- rod, jež zle tý -- rá
a vlast svou ke svo -- bo -- dě vést.
Jha se vést.
}

accompaniment = \chordmode {
\partial 4 s4 |
bes2. c4:7 | f1 | g2:m c:7 | f1 |
bes2. c4:7 | f1 | bes2. a4:7 | d1:m |
d1:m | a1 | bes1 | a1:7 |
\repeat volta 2 {
  c1:7 | c2:7 f | g2.:m a4:7 | d1:m |
}
f1 | f1 | c1:7 | f1 |
\repeat volta 2 {
  bes2 c:7 | f1 | g4:m bes c2:7 |
}
\alternative {
  { f1 }
  { f2. }
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
        \midi { \tempo 4=100 }
}
