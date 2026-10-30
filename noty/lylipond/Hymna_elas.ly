\version "2.24.0"
\header {
        title = "Hymna ELAS"
        composer = "Nikos Tsakonas"
        poet = "Sofia Mavroidi-Papadaki, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=104
\partial 16*5 d16 d8. g16 |
b4.. g16 a4.. fis16 | g4 d4 r8. d16 g8. a16 | b4 b4 a4 g4 |
d'2 ~ d8 r16 d16 d8. c16 | b4.. g16 a4.. fis16 | g4 d4 r8. d16 d8. fis16 |
a4 a4 a4 b4 | g2 ~ g8 r16 d16 g8. b16 | d2 ~ d8. c16 c8. c16 |
c2 b8 r8 a4 | b8. b16 b8 b8 a4 g4 | d'2 ~ d8 r16 d,16 g8. b16 |
d2 ~ d8. c16 c8. c16 | c2 b4 ~ b8 r8 | b8 b8 r8 b8 a8. g16 fis8. g16 |
a2 ~ a8 r8 \tuplet 3/2 { fis8 g8 a8 } | b4 a4 g4 fis4 | g4 g4 r4 \tuplet 3/2 { g8 a8 b8 } |
c4 b4 a4 gis4 | a2 ~ a8 r8 \tuplet 3/2 { a8 a8 b8 } | c4 b4 a4 gis4 |
a8 a8 r8 a8 b4 c4 | d4 g,4 a4 fis4 | g2 ~ g8 r16 \bar "|."
}

text = \lyricmode {
Teď puš -- ky vá -- ha rá -- mě tí -- ží,
když měs -- tu vstříc jdem z~hor -- ských vsí,
hle, vol -- nost z~dá -- li k~nám se blí -- ží,
ať všu -- de ja -- ra květ se skví!
Teď spěj, E -- LAS, již po -- moc dá -- ti,
my za svo -- bo -- du jdem se rvát,
ať s~hor -- stva vý -- še k~nám se vrá -- tí
vol -- nost, již svět by nám chtěl brát!
Ži -- vot je vla -- sti pís -- ní slá -- vy,
na po -- li bi -- tvy zní ten hlas,
hr -- din -- ná pí -- seň zdví -- há hla -- vy,
když z~hor k~nám zní E -- LAS, E -- LAS!
}

accompaniment = \chordmode {
\partial 16*5 g16*5
g2 d2:7 g1 g2 a2:7 d1:7 g2 d2 g2 b2:m d1 g1
g2 d2:7 g2. d4:7 e2.:m a4:7 d2 g2 b2:m d2:7 g1 e2:m a2
d1 g1 e1:m a1:m d1:7 a1:m d1:7 g2 a4:7 d4:7 g2 s8 s16
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
        \midi { \tempo 4=104 }
}
