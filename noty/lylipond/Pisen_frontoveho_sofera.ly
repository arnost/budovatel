\header {
        title = "Píseò frontového ¹oféra";
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
Pøes øe -- ky, ho -- ra -- mi do -- li -- na mi,
oh -- nìm, bou -- øí, po -- lem mi -- no -- vým,
ve -- dli jsme své stro -- je v~no -- vé tu -- hé bo -- je,
stá -- le dál, vstøíc ces -- tám fron -- to -- vým. 
Fronto -- vá ces -- ta do da -- le -- ka de¹ -- tìm bomb srd -- ce nám
ne -- po -- le -- ká. Na smrt ne -- ní po -- my¹ -- le -- ní, do -- ma
nás no -- vá prá -- ce èe -- ká. Na smrt ne -- ní po -- my¹ -- le -- ní, do -- ma
nás no -- vá prá -- ce èe -- ká. 
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
