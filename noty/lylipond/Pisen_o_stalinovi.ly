\header {
        title = "Píseò o Stalinovi";
        composer = "M. Blantìr";
	poet = "A. Surkov";
}

melody = \notes \relative c'' {        
\time 4/4;\key c;
g8 c, e g b a f d | c2 g'4 r | c,8 e g c b a c a |
g1 | c8 c c c c b a gis | a2 d,4 r |
e8 g c a g e f d | c1 | 
\repeat volta 2 {
e8 e dis8. e16 fis8 fis e8.fis16 |
g2 a4 r | b8 g a8. b16 c8 a8 b8. c16 | d2. ( ) dis4 |
e8 e e8. e16 d8 b c8. d16 |
c2 d,4 r | e8 g c8. e,16 f8 g a8. b16 | c1 |
< { e8 e e8. e16 d8 b c8. d16 } { c8 c c8. c16 b8 gis8 a8. b16 } > |
< {c2 d,4 r}{ a'2 d,4 }> 
< { e8 g c8. e,16 f8 g a8. b16} { c,8 e e8. c16 d8 e f8. g16 } > |
< { c1  }{  c,1  } > ~ |
}
\alternative {{ ~ <{  c4} { c,4 }  > r4 r2 }{ ~ < { c2. }{ c,2.}> r4}}
        \bar "|.";
}

text = \lyrics {
Po vla -- sti, kam o -- ko jen se dí -- vá, v~den -- ní prá -- ci ne
-- bo v~bo -- ji zlém, ná -- rod pí -- seò ra -- do -- stnou si zpí -- vá
o pøí -- te -- li vel -- kém o -- tci svém.
Sta -- lin na -- ¹e bo -- jo -- vá je slá -- va, Sta -- lin mlá -- de¾
ve -- dl, jí v¾dy pøál, s~pí -- sní svou je¾ ví -- tì -- zství mu dá
-- vá,
ná -- rod ná¹ za Sta -- li -- nem jde dál,
s~pí -- sní svou je¾ ví -- tì -- zství mu dá
-- vá,
ná -- rod ná¹ za Sta -- li nem jde dál dál.
}

accompaniment =\chords {
c2 g2-7 | c2. r4 | c2 f |
c2 g2-7 | a2-min e2-7 | f2. r4 |
c2 g2-7 | c1 | e2-min b2-7 |
e2-min d2-7 | g2 d2-7 | g2. ~ g4-7 | c2 e2-7 |
a2-min d2-7 | c2 g2-7 | c1 |
c2 e2-7 | a2-min d4-7 r4 c2 g2-7 | c1 c4 c2.

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
