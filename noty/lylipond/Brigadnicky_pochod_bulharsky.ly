\version "2.24.0"
\header {
        title = "Brigádnický pochod"
        composer = "Asen Karastojanov"
        poet = "Ivan Burin, český text Vlastimil Školaudy"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Marcia" 4=112
\partial 8 c8 |
\repeat volta 2 {
  a'4. g8 | f8. g16 a8. f16 | g4 g | r4 r8 g8 |
  bes4. a8 | g8. a16 bes8. g16 | a4 a | r4 r8 f8 |
  c'4. c8 | d8. c16 bes8. d16 | c4. c8 | d8. c16 bes8. d16 |
  c4 a | g4 r8 c | c4 a | g4 r8 c, |
  f4. f8 | g4. g8 | a4. bes8 | c4 bes8 a |
  g4. g8 | a4. a8 | bes4. c8 | d4 c8 bes |
  c8. bes16 a8. g16 | a4 bes | c2 ~ | c4 r8 c |
  c4 r8 c | c4 r8 c |
}
\alternative {
  { f2 ~ | f4 r8 c,8 }
  { f'2 ~ | f8 r8 r4 \bar "|." }
}
}

text = \lyricmode {
Již vzhů -- ru mlá -- dí té -- to ze -- mě,
jste lá -- ska, ví -- ra tou -- ha na -- še,
ať zá -- ří pla -- men pra -- po -- rů,
ať bou -- ří ja -- ko dy -- na -- ma,
jak tem -- ný les.
My s~ú -- der -- ní -- ky ví -- těz -- ně jde -- me
v~boj za čest a slá -- vu ná -- ro -- dů,
pro zem krás -- nou lí -- bez -- nou, __
hu -- rá, hu -- rá, hu -- rá! Již
nám! __
}

accompaniment = \chordmode {
\partial 8 s8 |
\repeat volta 2 {
  f2 f c:7 c:7
  c2:7 c:7 f f
  f2 bes f bes
  f2 c:7 f c:7
  f2 c:7 f f4 d
  g2:m d g:m g4:m c:7
  c2:7 f f f
  f2 c:7
}
\alternative {
  { f2 f }
  { f2 f }
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
        \midi { \tempo 4=112 }
}
