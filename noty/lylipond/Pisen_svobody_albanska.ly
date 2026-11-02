\version "2.24.0"
\header {
        title = "Píseň svobody"
        subtitle = "Albánská partyzánská"
        composer = "Dhora Leka"
        poet = "český text Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Pochodem" 4=104
\partial 4 d8. f16 |
a4 a2 gis8. a16 | bes4 a2 e8. f16 |
g4 e2 f8. e16 | d2~ d8 r d8. f16 |
a4 a2 gis8. a16 | d4 d2 c8. bes16 |
a4 g2 f8. e16 | d2~ d8 r a'8. a16 \bar "||"
\bar ".|:-||" \key d \major
\repeat volta 2 {
d4 d2 e8. d16 | fis2. e8. d16 |
cis2~ cis8. b16 a8. g16 | fis2~ fis8 r a8. a16 |
d4 d2 e8. fis16 | g2. g8. fis16 |
e4 b2 cis8. cis16 |
}
\alternative {
  { d2~ d8 r a8. a16 }
  { d2~ d8 r }
}
\bar "|."
}

text = \lyricmode {
Mlá -- dež vo -- lá Al -- ba -- ni -- i,
mlá -- dež vo -- lá ná -- rod v~boj.
Fa -- šis -- tic -- ký had se sví -- jí,
par -- ty -- zá -- nů zved se roj.
Po všech ho -- rách, do -- li -- nách,
sly -- šíš rá -- ny ze všech stran.
Za svo -- bod -- nou no -- vou zem
vál -- čí mla -- dý par -- ty -- zán.
Po všech zán.
}

textB = \lyricmode {
\set stanza = "2."
Pěs -- ti tvr -- dé děl -- ník zve -- dá,
pěs -- ti tvrd -- ší nad o -- cel.
Ú -- nik z~pas -- ti mar -- ně hle -- dá
fa -- šis -- tic -- ký ne -- pří -- tel.
}

textC = \lyricmode {
\set stanza = "3."
Ze všech le -- sů, ze všech po -- lí
vý -- zva ráz -- ná k~bo -- ji hřmí.
Al -- ba -- ni -- e vra -- ha sko -- lí,
pou -- ta zlo -- mí o -- troc -- tví.
}

accompaniment = \chordmode {
\partial 4 s4
d1:m g4:m d2.:m a1:7 d1:m
d1:m g:m a:7 d2.:m a4:7
\repeat volta 2 {
d1 d a:7 d2. a4:7
d1 g e2.:m a4:7
}
\alternative {
  { d2. a4:7 }
  { d2. }
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
        \midi { \tempo 4=104 }
}
