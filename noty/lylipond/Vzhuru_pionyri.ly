\header {
        title = "Vzhùru pionýøi";
        composer = "J. Tausinger";
	poet = "M. Povondea";
}

PrvniHlas = \notes \context Voice=prvni{
\property Voice.verticalDirection = \up
r4 a | b g | e fis8 g | a4 fis | d e8 fis | g4 e | cis fis |
d2 ( | ) d8 r d cis | b4 b | b8 d g b | d4 cis8 b | a4 b | g2 ( | ) g8
r a4 | fis2 ( | ) fis8 r d cis | b4 b | b8 d g b | d4 cis8 b |
a4 ais | b d ( | ) d cis | d < b g > | <  d a fis > r
}

DruhyHlas = \notes \context Voice=druhy {
\property Voice.verticalDirection = \down
r4 a | g e | cis d8  e | fis4 ais, | b cis8 d | e4 cis | cis ais 
b2 ( | ) b8 r d cis | b4 b | b8 d g b | b4 a8 gis | fis4 dis | e2 ( |
 ) e8 r cis4 | d2 ( | ) d8 r d cis | b4 b | b8 d g b | b4 a8 gis |fis4
 fis | g e ( | ) e a | f 
}

melody = \notes \relative c' {        
\time 2/4;\key d;
fis8. g16 fis8 e | d4 a |
a' b8. g16 | a4 g8. fis16 | e4 a ( | ) a  fis |
< {d2 } {r4 \times 2/3  { [ e8 ( fis ) a ] }}  > |
[ g8. fis16  ] [e8. a16] | fis8. g16 fis8 e | d4 a | a'4 b8. g16 |  a4 b | cis e, ( |
) e b' | a r |
<
\PrvniHlas
\DruhyHlas
>
        \bar "|.";
}

text = \lyrics {
Vzhù -- ru pi -- o -- ný -- øi, dnes ce -- lý svìt u¾ se dí -- vá na
nás. - - - - -
Na -- ¹e ce -- sta mí -- øí vpøed, ni -- kdy zpìt, je do prá -- ce
èas.
My má -- me svou pra -- vdu ví -- tì -- znou, po -- ne -- sem ji hr --
dì dál, s~ru -- dým ¹á -- tkem nad hla -- va -- mi na po -- cho -- du
jdem dál, jdem dál, sou -- druh Go -- ttwald je v¾dy s~ná -- mi, s~ním
ku -- pøe -- du, pi -- o -- ný -- rùm zdar!
 


}

accompaniment =\chords {
d1 d4 g d2 a1 d2 |
e4-min a | d1 d4 g d e-7 a2. e4-7 a1
g2 a-7 d4 fis b2-min e-min fis
b1-min g cis2-7 fis4-min b e2.-min  
a4-7 d1 g cis2-7 fis4-min fis g2. a4-7 d4 g d 
 
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

