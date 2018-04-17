\header {
        title = "Vzh�ru pion��i";
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
Vzh� -- ru pi -- o -- n� -- �i, dnes ce -- l� sv�t u� se d� -- v� na
n�s. - - - - -
Na -- �e ce -- sta m� -- �� vp�ed, ni -- kdy zp�t, je do pr� -- ce
�as.
My m� -- me svou pra -- vdu v� -- t� -- znou, po -- ne -- sem ji hr --
d� d�l, s~ru -- d�m �� -- tkem nad hla -- va -- mi na po -- cho -- du
jdem d�l, jdem d�l, sou -- druh Go -- ttwald je v�dy s~n� -- mi, s~n�m
ku -- p�e -- du, pi -- o -- n� -- r�m zdar!
 


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

