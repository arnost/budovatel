\header {
        title = "Hej stalinovci";
        composer = "Vladim�r Sommer";
	poet = "Miloslav Zachata";
}

melody = \notes \relative c' {
        \time 4/4;\key f;
\repeat volta 2 {
d8 d d4 ( )d8 e f g | a4 f e d |
cis e cis a | d f e r | d8 d d4 () d8 e f g |
a4 f e d | cis e cis a | d r r2 |
\key d;
a2 d4 a' | a g r a8 g | fis4 d cis e | d4 r r2 |
a2 d4 a' | a g r a8 g | fis4 d cis d | e4 r r2 |
g2. fis8 g | fis4 g a e |fis d'2 cis8 d |
cis4 d e b | c e2 c8 d | e4 d c b |
a c2 a4 | g bes a g | a,2 d4 a' | a g r a8 g |
fis4 d cis e | }
\alternative {{d4 r r2 | r1 }{d4 e f g | a1}}
        \bar "|.";
}

text = \lyrics {
Ka� -- d� z~n�s mu -- s� b�t u sv� pr� -- ce,
ni -- kdo ne -- sm� le -- ni -- v�t, pro -- to v�s
vo -- l� -- me: Poj� -- te rv�t se, d� -- lat lep -- ��
sv�t!

Hej Sta -- li -- nov -- ci do ra -- cho -- ty zve -- se -- la,
v~pr� -- ci se chce -- me do -- stat ze -- mi do �e -- la.
N�s spou -- sta pr� -- ce �e -- k�, hej n�s a -- le ne -- po -- le --
k�, po sv�m ��t a d� -- lat chce -- me a my to do -- k� -- �e --
me. Hej, Sta -- li -- nov -- ci, do ra -- cho -- ty zve -- se 
-- la.  la, jen zve -- se -- la.
}
text_ii = \lyrics {
My o v�ech sv� -- to -- v�ch pl� -- nech v� -- me,
jim� by v�l -- ka p�i -- �la vhod. My bez b�z -- n� na n� od -- po --
v� -- me pra -- c� pro �i -- vot. 
}

accompaniment =\chords {
\repeat volta 2 {
d2-min g-min d-min g-min
a1-7 d2-min a2-7 d2-min g-min
d-min g-min a1-7 d |
d1 g d2 a-7 d1
d1 g2 r4 g-min b1-min a-7 
e-min.7 a-7 b-min
b2-min e c1 a-min f es2 a-7 d1 g d2 a-7 }
\alternative {{d4-min r2. r1 }{ d4 c bes g d1}}
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
            \context Lyrics <\text \text_ii>
        }
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

