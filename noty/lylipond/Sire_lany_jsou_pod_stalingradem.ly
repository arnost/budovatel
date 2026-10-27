\version "2.24.0"
\header {
        title = "Širé lány jsou pod Stalingradem"
        composer = "V. Makarov"
        poet = "J. Dolmatovskij, český text F. Soukup"
}

melody =  \relative c' {
        \clef "treble_8"
        \time 4/4 \key c \minor \tempo "Klidně" 4=72
c2..-> g8 | c2..-> g8 |
\repeat volta 5 {
c4. g8 bes4. g8 | aes8 g f es16[( f]) g4 c,4 |
\time 2/4 d8 es f r |
\time 4/4 d8 es f g bes g c[( d]) |
es4 es es4. f16[( es]) | d8 c bes aes bes[( g] c) bes |
\time 3/4 aes8 g f r c'\fermata r |
\time 4/4 aes8 g f c es4 g8[( f]) |
}
\alternative {
{ \volta 1,2,3,4 c1\fermata }
{ \volta 5 c2( es | c2.) r4 | es'1( | c1\fermata) \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Ši -- ré lá -- ny
Ši -- ré lá -- ny jsou pod Sta -- lin -- gra -- dem,
bez kon -- ce, bez kon -- ce ty ste -- pi jsou.
Z~ja -- ra při -- šly kol -- choz -- ní bri -- gá -- dy,
ve -- se -- le, Ech, ve -- se -- le za pra -- cí svou.
den __ Ej __
}

accompaniment = \chordmode {
c1:m c1:m
\repeat volta 5 {
c1:m f2:m c2:m
bes2
bes2 bes8 es8 c8:m g8:m
aes2 f2:m bes2:7 es4 c4:m
f2.:m
f2:m aes4 c8:m g8:7
}
\alternative {
{ c1:m }
{ c2:m aes2 c1:m aes2 f2:m c1:m }
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
        \midi { \tempo 4=72 }
}
