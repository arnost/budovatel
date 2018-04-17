\header {
        title = "P�se� frontov�ho �of�ra";
        composer = "B. Mokrousov";
	poet = "B. Laskin, N. Labkovskij";
}

melody = \notes \relative c' {        
\time 4/4;\key c;
e8 a c a b e, gis b | a2 e |
c8 e g e f e f e | e1 |
g8 a c d c b4. | c,8 e a b a gis4. |
e8 fis g e b' a g a | e2. fis8 gis |
a4 e2 b'8 c| a4 e2 c8 e | g4 fis8 g a4 g8 d |
f4 e2 f8 e | d4 a'2 f8 d | e4 a2 c,8 d |
e4 f8 d c4 d8 b | a2. f'8 e | d4 a'2 f8 d |
e4 a2 c,8 d | e4 f8 d c4 d8 b | < a2. a'2.> r4 |
        \bar "|.";
}

text = \lyrics {
P�es �e -- ky, ho -- ra -- mi do -- li -- na mi,
oh -- n�m, bou -- ��, po -- lem mi -- no -- v�m,
ve -- dli jsme sv� stro -- je v~no -- v� tu -- h� bo -- je,
st� -- le d�l, vst��c ces -- t�m fron -- to -- v�m. 
Fronto -- v� ces -- ta do da -- le -- ka de� -- t�m bomb srd -- ce n�m
ne -- po -- le -- k�. Na smrt ne -- n� po -- my� -- le -- n�, do -- ma
n�s no -- v� pr� -- ce �e -- k�. Na smrt ne -- n� po -- my� -- le -- n�, do -- ma
n�s no -- v� pr� -- ce �e -- k�. 
}

accompaniment =\chords {
a2-min e-7 | a1-min |
c2 g       | c1     |
a2-min e   | a2-min e |
a4-min e-min b2-7 | e1|
a2-min e | a1-min | c2 g-7 |
c2. a4-7 | d1-min | a1.-min 
e2 | a1-min | d-min | a1.-min e2 |
a2.-min
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
