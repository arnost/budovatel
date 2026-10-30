\version "2.24.0"
\header {
        title = "Kantáta o Stalinovi"
        composer = "A. V. Alexandrov"
        poet = "M. Injuškin, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \minor \tempo "Široce" 4=76
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionMelismaBusy)
r2 r4 d4 \bar "||"
\repeat volta 4 {
g4.( a8) bes4 g4 | ees'8[( c]) d2 c8[( bes]) | a4.( g8) bes4 a8[( g]) |
d4( d'4 d8[ c]) bes8 a8 | g4( ees'2) d8 g,8 | c4.( d8[ ees d]) c8 d8 |
f4.( ees8) d4 c4 | d2. bes4 | g'2 f4 g8[( f]) | ees8[( d]) c2 d8[( ees]) |
f4.( ees8) d4 c4 | d8[( c]) bes2 a4 | g4.( bes8) c4 d4 | f4( ees4) d4 c4 |
d2 bes4 a4 | g2 r4 bes4 | g'2 f4 g8[( f]) | ees8[( d]) c2 d8[( ees]) |
f4.( ees8) d4 c4 | d8[( c]) bes2 a4 | g4.( bes8) c4 d4 | f4( ees4) d4 c4 |
}
\alternative {
{ d2 bes4 a4 | g2. d4 | }
{ d'2 d4 d4 | g1 ~ | g2. bes,4 | ees2 ees4 d4 | cis2 cis4 d4 |
  ees2 ees4 d4 | cis2 cis4 d4 | f4( ees4) d4 c4 | bes'4( a4) g4 f4 |
  ees2 ees4 f4 | g1 ~ | g4 g2 g4 | g1\fermata \bar "|." }
}
}

text = \lyricmode {
Až z~dá -- la -- vy ši -- ré tam výš nad hor pra -- hem,
kde v~šíř o -- rel sám vol -- ně vzná -- šet se smí,
o Sta -- li -- nu moud -- rém, všech nás ot -- ci dra -- hém
teď nád -- her -- ná pí -- seň všech ná -- ro -- dů zní,
o Sta -- li -- nu moud -- rém, všech nás ot -- ci dra -- hém
teď nád -- her -- ná pí -- seň všech
ná -- ro -- dů zní. Ta
ná -- ro -- dů zní __ o Sta -- li -- nu moud -- rém, všech nás ot -- ci dra -- hém
teď nád -- her -- ná pí -- seň všech ná -- ro -- dů zní __ pí -- seň zní.
}

accompaniment = \chordmode {
s2. d4:7
\repeat volta 4 {
g1:m c4:m g2.:m a1:7 d2 d2:7 g4:m c2:m g4:m c1:m f1:7 bes2. bes4:7
ees2 f4:m g4:7 c1:m f2. f4:7 bes2. d4:7 ees2 c4:m g4:m c1:m d1 g2.:m bes4:7
ees2 f4:m g4:7 c1:m f1:7 bes2. d4 ees2. g4:m c1:m
}
\alternative {
{ g2.:m d4:7 g1:m }
{ g2.:m d4:7 g1:7 c2.:m g4:m c2.:m g4:m a2.:7 g4:m c2.:m g4:m a2.:7 g4:m
  c2:m g4:m c4:m g2:m c2:m c1:m g1 g1 g1 }
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
        \midi { \tempo 4=76 }
}
