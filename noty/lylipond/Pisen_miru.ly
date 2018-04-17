\header {
        title = "P�se� m�ru";
        composer = "D. �ostakovi�";
	poet = "J. Dolmatovskij";
}

PrvniHlas =\notes {        
b'4 b8 b | b8 ( ) cis d b | a4. ( ) fis8 | e4 ( ) e8 r8 | a4 fis8 ( ) g
| a8 ( ) d cis b a2 | a4 fis8 g | [ a8 ( ) d ] cis b | cis2 | cis4
ais8 ( ) b | cis8 ( ) ais b cis | dis2 |
e2 ( | ) e4 b8 cis | d4 cis d2 ( | )d8 r r4 
} 

DruhyHlas = \notes {
g,4 g8 g | g8 ( ) a b g | fis4. ( )  d8 | cis4 ( ) cis8 r | fis4 d8 ( ) e
| fis ( ) b a g | fis2 | fis4 d8 e | [ fis8 ( ) b ] a gis | a2 | ais4
fis8 ( ) gis | ais ( ) fis gis a | < { b4 ( ) b } { a4 } > |
< { gis2 ( | ) gis4 gis8 gis | g4 g fis2 ( | ) fis8 r r4 |}
{ b2 (| ) b4 b8 b | b4 a | a2 ( | ) a8 }
>
}


melody = \notes \relative c' {        
\time 2/4;\key d;
\partial 4;
a8. a16 | a'4 fis8. e16 | d4 e8. fis16 | g4 fis8. e16 
| a4 d,8. d16 | b'4  a8. g16 | a4 fis8. d16 | e4. ( ) fis8 
| e8 r a,8. a16 | a'4 fis8. e16 d4 e8. fis16 | g4  fis8. e16
| a4 d,8. d16 | < \PrvniHlas \DruhyHlas >
\bar "|.";
}


text = \lyrics {
Z~na -- �ich pra -- po -- r� k~n�m vo -- l� m�r v~��� i d�l, ru -- d�
krev hr -- di -- n� z� -- �� na nich. N� -- rod n� ce -- stou m� -- ru se
k~bu -- dou -- cnu dal, ka -- �d� z~n�s vla -- stn� pra -- c� m�r dnes
br�n�. Jaro si vybo -- jo -- val lid,
roz -- kve -- tla lou -- ka i str��. My chceme praco --  vat a
��t, m�r vyr -- ve v�l -- ce zbra�.
}

accompaniment =\chords {
r4 d1 e4-min a4-7 d2 g2
d2 g2 a2 d1 e4-min a4-7 d2
g1 d2 a d1. d2. e4-7 a2 fis1 b2 e1 g4 a4-7 d2.
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
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
