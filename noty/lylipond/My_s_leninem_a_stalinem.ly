\version "2.24.0"
\header {
        title = "My s Leninem a Stalinem"
        composer = "Valentin Kručinin"
        poet = "Vasilij Lebeděv-Kumač, český text Jelena Holečková"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Zvolna" 4=88
r2 r8 r16 a16 d8. c16 \bar "||"
\repeat volta 3 {
\mark \markup { \musicglyph "scripts.segno" }
bes4 a4 c4 bes4 | a4 d,4 r8. d16 a'8. g16 | f4 g4 e4 f4 |
d2 ~ d8 r16 d16 d8. e16 | f4 f4 r4 g8. f16 | a4 a4 r8. gis16 a8. b16 |
c4 d4 e4 e4 | e2 ~ e8 r8 a,4 \bar "||"
d4 ~ d8 r16 d16 c4 bes4 | a8. bes16 c4 ~ c8 r8 d4 | bes4 ~ bes8. bes16 a8 r8 g4 |
a2 ~ a8 r8 a4 | bes8. a16 g4 ~ g8 r8 bes4 | a8. g16 f4 ~ f8 r8 a4 |
g4 ~ g8. f16 e4 a4 | d,2 ~ d8 r8 d'4 | bes8. a16 g4 ~ g8 r8 d'4 |
f8. e16 d4 ~ d8 r8 a4 | g4 ~ g8. f16 e4 a4 |
}
\alternative {
{ d,2 ~ d8 r16 a'16 d8. c16 | }
{ d2 ~ d8 r8 r4 \bar "|." }
}
}

text = \lyricmode {
My ne -- jed -- nou jsme v~po -- li stá -- li
a by -- li ští -- tem vla -- sti své,
stra -- ní -- ci věr -- ní, bo -- je zna -- lí,
jsme voj -- sko ze -- mě so -- vět -- ské.
Než bít nám srd -- ce přes -- ta -- ne
a krů -- pěj sil je v~nás,
my s~Le -- ni -- nem a Sta -- li -- nem
vpřed pů -- jdem v~kaž -- dý čas.
My s~Le -- ni -- nem a Sta -- li -- nem
vpřed pů -- jdem v~kaž -- dý čas. To zá -- zra --
čas.
}

accompaniment = \chordmode {
s1
\repeat volta 3 {
g2:m c2:7 d2:m g2:m d2:m a2:7 d2.:m bes4 f2. c4:7 f1 c2 e2:7 e1:7
bes2 c2:7 f2. d4:7 g2:m c2:7 f2 d2 g2:m c2:7 d2.:m f4 a1:7
d1:m g1:m d1:m a1:7
}
\alternative {
{ d1:m }
{ d1:m }
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
        \midi { \tempo 4=88 }
}
