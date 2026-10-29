\version "2.24.0"
\header {
        title = "Krajem letí naše dělnická píseň"
        composer = "Isaak Dunajevskij"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "V tempu pochodu" 4=116
\partial 4. f8 a c |
\repeat volta 2 {
  f4 e8. c16 e4 d8. bes16 | d4 c ~ c8 c, f a |
  c4 b8. c16 cis4 c8. cis16 | d2 ~ d8 f f f |
  f4 e8. d16 d4 c8. b16 | d4 c r8 f, f g |
  a4 gis8 a c bes d, e | f4 r r8 f f f |
  f4 d8. f16 bes4 f8 g | a8.( g16) f4 r8 f f f |
  f4 d8 f bes4 c8. d16 | e2 ~ e8 e e e |
  e4 d8. c16 bes4 a8. bes16 | d4 c r8 f, f g |
  a4 gis8 a c bes d, e |
}
\alternative {
  { f2 ~ f8 f a c }
  { f,4 r r2 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Kra -- jem le -- tí na -- še děl -- nic -- ká pí -- seň,
zpí -- vá ji po -- lí i to -- vá -- ren hlas,
pí -- seň o bu -- dou -- cí svo -- bod -- né prá -- ci,
kte -- rá bu -- de všu -- de pro kaž -- dé -- ho z~nás.
Kdo jed -- ním kro -- kem jde spo -- leč -- ně s~ná -- mi
po jed -- né ces -- tě za ve -- li -- ký cíl,
po kte -- ré lé -- ta již ví -- těz -- ně krá -- čí
Le -- ni -- nův děl -- nic -- ký pr -- vý svě -- ta -- díl.
Od Šu -- ma -- díl.
}

accompaniment = \chordmode {
\partial 4. s4. |
\repeat volta 2 {
  f2 bes2 | f4:dim f2. |
  f2 f2:7.5+ | bes1 |
  bes2:6 c2:7 | f4:dim f4 bes4 bes4:m |
  f2 c2:7 | f2 f8 f4.:7 |
  bes2 bes2:m | f2 f8 f4.:7 |
  bes2 g2:m | a1 |
  c2 c2:7 | f4:dim f4 bes4 bes4:m |
  f2 c2:7 |
}
\alternative {
  { f4 bes4.:7 f4. }
  { f1 }
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
        \midi { \tempo 4=116 }
}
