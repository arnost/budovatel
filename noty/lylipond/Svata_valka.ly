\version "2.20.0"
\header {
        title = "Svatá válka" 
        composer = "A. V. Alexandrov" 
	poet = "V. Lebeděv-Kumač" 
}

melody =  \relative c' {        
\clef treble
\time 3/4 \key a \major 
\repeat volta 2 {
r4 r r8 cis | fis4. a8 cis d | cis8. a16 fis4 r8 cis'|
b4. a8 g fis | cis4 r r8 cis8 | fis4. a8 cis d | cis8. a16 fis4 r8 fis
| cis'4. b8 a gis | fis4 r e | a e a8 b | cis8. a16 a4 cis | e4. d8
cis b | cis4. ( b8 ) [a ( gis ) ] | fis4 a cis8 d | cis8. a16 fis4 r8
fis | cis'4. b8 a gis |
}
\alternative { { fis4 r r8 cis8 }
	     { fis4 r r   }}

        \bar "|." 
}

text = \lyricmode {
Již vstá -- vej ze -- mě o -- hro -- mná, 
již vstá -- vej v~kru -- tý boj,
jde chá -- ska vra -- hů ni -- če -- mná, 
ji rá -- zně bít se stroj!

Až sva -- té na -- še nad -- še -- ní 
se vzdou -- vá jak vln proud!
Svět vá -- lka na -- še pře -- mě -- ní,
jež má vždy sva -- tou slout! Již slout.
}

sbor =  \relative c' {        
\clef treble
\time 3/4 \key a \major 
\repeat volta 2 {
r4 r r8 cis | fis4. fis8 <a fis> <b fis> | < a fis >8. fis16 fis4 r8
< a fis >  |
<gis cis, >4. < fis cis >8 b, d | cis4 r r8 cis | fis4. fis8 < a fis >
< b fis > |
< a fis >8. fis16 fis4 r8 fis |< a cis, >4. < gis cis, >8 < fis cis > <
eis cis > | fis4 r e |
a e cis8 e | a8. a,16 a4 < a' a,> | < cis e,>4. < b e,>8 < a  e> < gis
e>| a4. ( gis8 ) c,4 |
fis4 fis < a fis>8 < b fis> | < a fis>8.  fis16 fis4 r8 fis | <
a cis,>4. <  gis cis, >8 < fis cis > < eis cis >|
}
\alternative { { fis4 r r8 cis }
	     { fis4 r r   }}

        \bar "|." 
}



accompaniment =\chordmode {
\repeat volta 2 {
fis2.:m | fis2.:m | fis2.:m | cis2:7 b4:m|
cis4:7 s2 | fis2.:m | fis2.:m | cis2.:7 | fis4:m s e4:7|
a2. | a2. | e2.:7 | a4. cis4.:7 |  fis2.:m | fis2.:m |
cis2.:7
}
\alternative { { fis2.:m }
	     { fis2.:m }}
		}




\score {
        <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
          \new Voice = "sbor" { \autoBeamOn \sbor }
       >>
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}
