\version "2.24.0"
\header {
        title = "Pevně, soudruzi, dál v budování"
        composer = "Asen Karastojanov"
        poet = "Ivan Burin, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=108
        \partial 4
d8.\f g16 | b4 b8. a16 g4 g8. b16 | d2 b4 a8. b16 |
c4 c8. c16 b4 g8. g16 | a2~ a8 r8 d,8. g16 |
b4 b8. a16 g4 g8. b16 | d2\< e4 e8. e16\! | fis4 d8. d16 e4 a,8. a16 |
d2~ d8 r8 d,4\p | c'4 c8. b16 a4 b8. c16 | d2 b8 r8 b4\mf |
e4 e8. d16 c4\< d8. e16\! | fis2\f~ fis8 r8 b,4 |
\repeat volta 2 {
  g'4 g8. fis16 e4 e8. d16 | c4.( d8) e4 d8.[( c16)] |
}
\alternative {
  { b4 b8. b16 a4 a8. a16 | d2~ d8 r8 b4 | }
  { b4 d8. d16 e4 fis8. fis16 | g2~ g8 r8 \bar "|." }
}
}

text = \lyricmode {
Pev -- ně, sou -- dru -- zi, dál v~bu -- do -- vá -- ní,
ži -- vot krá -- sný lid náš ať již má,
po -- znat chcem o -- hni -- vé sí -- ly plá -- ní,
s~níž se lid hr -- di -- nů v~prá -- ci dá.
Ať hřmí fa -- brik ná -- dher -- ný zá -- stup,
ať lán ži -- ta v~dál buj -- ně vlá!
To ná -- ro -- da moc -- ný je ná -- stup, jenž
vlast svo -- bod -- nou za -- se má. To
vlast svo -- bod -- nou za -- se má.
}

textB = \lyricmode {
S~ú -- si -- lím jde -- me své pl -- nit plá -- ny,
teď lid sám má si svůj zá -- kon psát,
plod -- něj -- ší bu -- de nad ži -- ta lá -- ny,
bu -- de pev -- ně -- ji o -- ce -- li stát.
}

textC = \lyricmode {
V~my -- sli měj všech -- ny hrů -- zy a vál -- ky,
v~my -- sli o -- bě -- ti bez poč -- tu měj,
jak stráž bed -- li -- vá zí -- rej v~dál -- ky, _
a jen kup -- ře -- du, kup -- ře -- du spěj!
}

accompaniment = \chordmode {
\partial 4 s4
g1 g2 d2:7
d2:7 g2 d1
g1 g1 d1
d1 d1:7 g1
e2 a2:m fis1
\repeat volta 2 { e2:m e2 a2.:m d4 }
\alternative {
  { g2 d2:7 g2. b4:7 }
  { g2 d2:7 g2. }
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
          \new Lyrics \lyricsto "one" \textB
          \new Lyrics \lyricsto "one" \textC
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=108 }
}
