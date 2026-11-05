\version "2.24.0"
\header {
        title = "Hej rup!"
        subtitle = "rumunská brigádnická"
        composer = "M. Vescan"
        poet = "M. Vescan, český text Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor
\repeat volta 2 {
  c4( g'8) r8 c,4( g'8) r8 | c,4 g'8. aes16 g4 r4 |
  c4 bes8. aes16 g4 f4 |
}
\alternative {
  { es4 f8. d16 g4 r4 }
  { es4 es8. d16 c4 r4 \bar "||" }
}
es4 es8. g16 bes4 bes8. aes16 | g4. f8 es4 r4 |
f4 f8. aes16 c4 c8. bes16 | aes4. g8 f4 r4 |
g4( c8) r8 g4( c8) r8 | g4( c8) r8 g'4 r4 |
es4 es8. c16 d4 es8. d16 | c2. r4 \bar "|."
}

text = \lyricmode {
Hej rup, hej rup, za hřmo -- tu skal
bri -- gá -- da na -- še
jde dál a dál,
jde dál a dál.
Ne -- zná -- me, co je to hrů -- za, strach,
bu -- du -- jem sil -- ni -- ce ve ska -- lách.
Hej rup, hej rup, hej rup, bum,
bri -- gá -- do, jen dál a dál.
}

textII = \lyricmode {
Hej rup, hej rup, jen výš a výš,
Ru -- mun -- sko no -- vé
ať u -- vi -- díš,
ať u -- vi -- díš.
Bu -- du -- jem šťast -- něj -- ší, krás -- ný svět,
v_bo -- ji tom sla -- boch jen cou -- vá zpět.
Hej rup, hej rup, hej rup, bum,
bri -- gá -- do, jen výš a výš!
}

accompaniment = \chordmode {
\repeat volta 2 {
  c1:m | c4..:m aes16 c2:m |
  f2:m c4:m bes:7 |
}
\alternative {
  { c4:m bes g2:7 }
  { c4:m c8.:m g16:7 c2:m }
}
es2 bes:7 | es4. bes8:7 es2 |
f1:m | f4.:m c8 f2:m |
c1:m | c2:m g:7 |
c2:m g:7 | c1:m
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'() \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textII
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
