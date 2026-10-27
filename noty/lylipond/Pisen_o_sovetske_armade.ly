\version "2.24.0"
\header {
        title = "Píseň o Sovětské armádě"
        composer = "A. V. Alexandrov"
        poet = "O. Kolyčev, český text H. Vrbová"
}

melody =  \relative c {
        \clef "treble_8"
        \time 4/4 \key as \major \tempo "Rázně, nespěchat" 4=100
\partial 4 c8. des16 |
\repeat volta 6 {
es4 f8. g16 as4 es8. as16 | c8.[( bes16]) as2 as8. g16 | f4 g8. as16 bes4 as8. g16 |
as2~ as8 r8 c,8. des16 | es4 f8. g16 as4 es8. as16 | c8.[( bes16]) as2 f8. c'16 |
bes4-> g8. es16 bes'4 f8. g16 | es2 r8 g8^"Refrén" as bes |
c8.-> c16 c4~ c8 bes c des | es8.-> c16 c4~ c8 c des es | f4 f8. f16 f8[( es8]) des c |
des2~ des8 bes c des | es8.-> c16 c4~ c8 c des es | f8.-> des16 des4~ des8 bes c des |
es8. c16 c4 des c8 bes | es2~ es8 f es des | c8. as16 as4 bes as8. g16 |
}
\alternative {
{ as2~ as8 r8 r4 }
{ as2~ as8 r8 r4 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Nad te -- bou se jak pra -- po -- ry vzná -- ší lé -- ta
na -- šich bo -- jů ví -- těz -- ných, __ o to -- bě zpí -- va -- jí pís -- ně
na -- še, náš lid o slá -- vě tvé zpí -- vá v~nich.
Ar -- má -- do hr -- din -- ná, __ ar -- má -- do ví -- těz -- ná, __ o to -- bě
le -- gen -- dy vy -- prá -- ví lid, __ te -- be jde, mi -- le -- ná __ ar -- má -- do
so -- vět -- ská, __ svou pís -- ní ra -- dost -- nou vlast po -- zdra -- vit, __
svou pís -- ní ra -- dost -- nou vlast po -- zdra -- vit. __
vit. __
}

accompaniment = \chordmode {
\partial 4 s4
\repeat volta 6 {
as1 | as2. c4:7 | f2:m bes4:m es4 | as1 | as1 | c4:7 f2.:m | es2 bes2:7 | es1 |
as1 | as1 | des2 f2:7 | bes2:m es2 | as1 | bes1:m | as2 des4 es4:7 |
as2 as8 bes8:m f8:m bes8:m | as2 es2:7 |
}
\alternative {
{ as1 }
{ as1 }
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
