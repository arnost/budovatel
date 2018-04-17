\header {
        title = "Svata valka";
        composer = "A. V. Alexandrov";
	poet = "v. Lebedev-Kumac";
}

melody = \notes \relative c' {        
\time 3/4;\key a;
\repeat volta 2 {
r4 r r8 cis | fis4. a8 cis d | cis8. a16 fis4 r8 cis'|
b4. a8 g fis | cis4 r r8 cis8 | fis4. a8 cis d | cis8. a16 fis4 r8 fis
| cis'4. b8 a gis | fis4 r e | a e a8 b | cis8. a16 a4 cis | e4. d8
cis b | cis4. () b8 [a () gis ] | fis4 a cis8 d | cis8. a16 fis4 r8
fis | cis'4. b8 a gis |
}
\alternative { { fis4 r r8 cis8 }
	     { fis4 r r   }}

        \bar "|.";
}

text = \lyrics {
Ji¾ vstá -- vej ze -- mì o -- hro -- mná, 
ji¾ vstá -- vej v~kru -- tý boj,
jde chá -- ska vra -- hù ni -- èe -- mná, 
ji rá -- znì bít se stroj!

A» sva -- té na -- ¹e nad -- ¹e -- ní 
se vzdou -- vá jak vln proud!
Svìt vá -- lka na -- ¹e pøe -- mì -- ní,
je¾ má v¾dy sva -- tou slout! Ji¾ slout.



}

sbor = \notes \relative c' {        
\time 3/4;\key a;
\repeat volta 2 {
r4 r r8 cis | fis4. fis8 <a fis> <b fis> | < a8. fis > fis16 fis4 r8
< a fis >  |
<gis4. cis, > < fis8 cis > b, d | cis4 r r8 cis | fis4. fis8 < a fis >
< b fis > |
< a8. fis > fis16 fis4 r8 fis |< a4. cis, > < gis8 cis, > < fis cis > <
eis cis > | fis4 r e |
a e cis8 e | a8. a,16 a4 < a' a,> | < cis4. e,> < b8 e,> < a  e> < gis
e>| a4. () gis8 c,4 |
fis4 fis < a8 fis> < b fis> | < a8. fis>  fis16 fis4 r8 fis | <
a4. cis,> <  gis8 cis, >< fis cis > < eis cis >|
}
\alternative { { fis4 r r8 cis }
	     { fis4 r r   }}

        \bar "|.";
}



accompaniment =\chords {
\repeat volta 2 {
fis2.-min | fis2.-min | fis2.-min | cis2-7 b4-min|
cis4-7 r2 | fis2.-min | fis2.-min | cis2.-7 | fis4-min r e4-7|
a2. | a2. | e2.-7 | a4. cis4.-7 |  fis2.-min | fis2.-min |
cis2.-7
}
\alternative { { fis2.-min }
	     { fis2.-min }}
		}




\score {
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff = mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
	    \context  Staff=sbor{
	    \sbor
	    }
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
