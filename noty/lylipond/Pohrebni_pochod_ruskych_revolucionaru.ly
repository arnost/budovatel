\header {
        title = "Poh�ebn� pochod rusk�ch revolucion���";
        composer = "";
	poet = "";
}

melody = \notes \relative c' {        
\time 4/4;\key g;
\partial 8;
e8 | b'4 [ a16 () g ] [ fis ( ) e ] b'4  [a16 () g ] [ fis () e ]
fis4 fis8. fis16 fis4 r8 fis8 | a4 b8 c [ b () a ] g fis |
[ e () g ] [ b () g ] e4 r8 e | b'4 [a16 () g ] [fis () e] b'4 [a16 ()
g ] [fis () e] | fis4 fis8. fis16 fis4 r8 fis8 | a4 c8 a g4 fis8 fis |
[e8 () g] [b () g ] e4 r8 b' | d4 d8. d16 d4 e8. e16 |
d4 c8. b16 c4 r8 d, | c'4 c8. c16 c4 d8. c16 |
c4 b8 ais b4 r8 e, | b'4 [a16 ()g ] [ fis () e] b'4 [a16 ()g ] [ fis
() e] | fis4 fis8. fis16 fis4 r8 fis8 | a4 a8 c8 b a g fis |
e g b g e4 r8 |
        \bar "|.";
}

text = \lyrics {
Vy za o -- b� pad -- li jste v~kru -- t�m bo -- ji, za o -- b� sv�
l�s -- ky k~v�em tr -- p� -- c�m, 
vy st� -- li jste za ni -- mi du -- �� svo -- j�,
svou ct�, svo -- bo -- dou svo -- j�, �i -- t�m sv�m.
Po l� -- ta  jste ch�ad -- li v~�a -- l� -- ��ch te -- mn�ch, tam kat u --
ko -- val v�s v~�e -- le -- zech pev -- n�ch, tam pou -- ta v�m �in -- �e -- la
v~p�� -- �er -- n� kout, tam vy -- �kli jste nad ty -- ra -- nem spra
-- ved -- li -- v� soud.
}

accompaniment =\chords {
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
        \midi  { \tempo 4 =100;}
        \paper { linewidth = 18.0\cm; }
}

