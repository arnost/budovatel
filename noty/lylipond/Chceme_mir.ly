\version "2.24.0"
\header {
        title = "Chceme mír!"
        composer = "Karel Macourek"
        poet = "Karel Šiktanc"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key as \major \tempo "Pochodem, hrdinně" 4=112
\repeat volta 2 {
R1*9 |
f4 f f g8. f16 | e4 c2. | as'4 as c d8 bes | es2 r4 bes8. c16 |
des4 des des des8 es | des4 c2. | as4 as as g8. f16 | g1 |
f4 f f g8 f | e4 c2. | as'4 as c d8 bes | es2 r4 bes8. c16 |
des4 des des des8 es | des4 c2. | as4 g8. f16 c'4 c, | f2 r4 c8.^"Refrén" f16 \bar "||"
es2. c8. f16 | es4 as8. g16 bes4 as8. e16 | f2 r4 des8. ges16 | f2. des8 ges |
f4 g8 as c4 bes8. g16 | es4 r r es | c'2 bes4 as8 c | bes2 a4 f |
des'2 c4 bes8 des | as2( g4) f | es4 c8. f16 es2 | f4 des8. g16 f4 g8. as16 |
bes4 c8 des f4 es |
}
\alternative {
{ as,2 r2 }
{ as1 ~ | as1 ~ | as8 r r4 r2 | R1 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Mí -- ro -- vou pí -- seň zpí -- vá ten, kdo má ži -- vot rád,
s~tou se rá -- no zem ro -- ze -- dní -- vá a dě -- ti jdou s~ní spát.
Od po -- lí, kte -- rá zra -- jí, z~do -- mů a hu -- tí zní,
když ji děl -- ní -- ci za -- zpí -- va -- jí na po -- chod ví -- těz -- ný.
Chce -- me mír! Chce -- me mír a za mír jdem se bít.
Šťast -- ně žít chce náš lid a nad zlem zví -- tě -- zit.
Buď Gott -- wal -- do -- vi slá -- va, má ze -- mě k~slun -- ci vstá -- vá,
ať ži -- je mír! Ať ži -- je mír, s~ná -- mi Sta -- lin jde k~ví -- těz -- ství!
ství! __
}

accompaniment =\chordmode {
\repeat volta 2 {
s1 as as f f2 f:7 des1 f:m f:dim c:7
f2.:m g4:7 c4 c2.:m7 f2.:m bes4:7 es2 f4:m7 es4
bes4:m bes:m7 es2:7 as1 f2:dim des c1
f2.:m g4:7 c4 c2.:7 f2:m f4:m6 bes4:7 es2 f4:m7 es4:7
bes4:m bes:m7 es2 as1 f2:m c f2.:m es4:7
as4 es:7 as es:7 as4 c2.:7 des2 f:7 bes2:m f4:7 bes8:m f:7
bes2:m es:7 as4 es as2 as1 es2:m6 f:7
bes1:m des2 es4 des as4 es as f:7 bes4:m bes8.:m f16:7 bes2:m
bes2:m es
}
\alternative {
{ as4 f:m7 c2 }
{ as1 as as as }
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
