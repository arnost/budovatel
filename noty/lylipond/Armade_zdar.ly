\header {
        title = "Arm�d� zdar";
        composer = "R. Drejsl";
	poet = "J. Hora";
}

melody = \notes \relative c' {
        \time 4/4;\key f;\tempo 4=100;
d4 f e f | d r4 r2 | g4 bes a bes | g4 r4 r2 | < f4 a > r4  < f4 a > 
<  d'4 f, >  | < e, c' >< bes' g ><  a f > < g e > |
< { a f e d } { f }> | e r r2 |
\key d;
\repeat volta 2 {
fis8 e4 d8 a'4 g | fis8. g16 a4 r b | d4 a g8 fis e4 |
d2 ( ) d8 r8 r4 | fis8 e4 d8 a'4 g | fis8 g a4 r b | 
cis b8 a b4 a8 gis|  a2 ( ) a4 r4 | b a g b | 
a fis r fis | e fis g fis | d2 ( ) d4 r |
f8 e4 d8 b'4 r | fis e8 d b'4 r |
a d2 <  e4 a,4 >
	
}
\alternative { { d4 r r2  }
	     { d4 r d r | r fis r2 }}
        \bar "|.";
}

text = \lyrics {
Pro -- ti v�l -- ce m�r, pro -- ti �tva -- n� klid a pro -- ti v�em, co vra -- �d�,
k~bo -- ji na -- stou -- pit. 
Vo -- j� -- ci dej -- me v� -- stra -- hu, je s� -- la v~na -- �ich zbra -- n�ch, ne -- p�� -- tel
ztra -- t� od -- va -- hu jak za -- sle -- chne n� zp�v a sm�ch.
Za -- �e -- ne -- me v�e -- chny, co my -- sl� na po -- ��r vo -- j� -- ci vp�ed za no -- v�
sv�t, ar -- m� -- d� zdar! zdar, zdar, zdar.

}

accompaniment =\chords {
d2-min a2-7 d2-min r2 g2-min d-7 g r  f2 f2 c-7 c-7
f e a4-7 r2.  d2 a d b-min d a-7
d r d a d b-min a e-7 a2. r4
a2-7 a2-7 d d fis-7 fis-7 b-min b-min d b-min d b-min d4 g2 a4-7 
d4 r2. d4 r d r 
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
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}



