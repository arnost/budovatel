\header {
        title = "Za hv�zdou jit�n�";
        composer = "???";
	poet = "???";
}

melody = \notes \relative c' {
        \time 4/4;\key g;
	\partial 4;
d4 | g4. fis8 g4 a | g () fis e d | g4. fis8 g4 a |
d2 r4 d4 | a4. gis8 a4 b | c4.() b8 a4 g | fis d d'4.a8 | 
g2 r4 b,4 | e4. g8 fis4 e | dis b' b, b' | c4. b8 a g fis e |
b'2 r4 d, | b' b c4. b8 | a2 e4 e | d4. g8 a4. bes8 | b2 r4 d,4 |
b'4. b8 c4. b8 | a4 () e' c a | <{g4. d8 b'4. a8 | g2  }{d'4. d8 d4. c8    | b2 }> 



        \bar "|.";
}

text = \lyrics {
Za hv� -- zdou jit� -- n� poj�me v~p�ed sou -- dru -- zi 
v~�i -- chni v~r�z. Pak zv� -- t� -- z� -- me v�ude hned, 
ne -- p�� -- tel pa -- dne hr�z. Jen ku -- p�e -- du krok 
vy -- �� -- dit! D�l -- n� -- ci mla -- d� chce -- te j�t? 
My jsme mla -- d� gar -- da, mla -- d� pro -- le -- ta -- ri -- �t.
My jsme mla -- d� gar -- da, mla -- d� pro -- le -- ta -- ri -- �t.
}

nemecky = \lyrics {
Dem Mor -- gen -- rot ent -- ge -- gen, 
Ihr Kampf -- ge -- no -- ssen
all! Blad siegt ihr al -- ler we -- gen, 
bald weicht der Fein -- de Wall!
Mit Macht her -- an und hal -- ten! Schritt 
Ar -- bei -- ter -- ju -- gend? Will sie mit? 
Wir sind die jun -- ge Gar -- de des Pro -- le -- ta -- ri -- ats,
Wir sind die jun -- ge Gar -- de des Pro -- le -- ta -- ri -- ats,
}

accompaniment =\chords {
r4 g1 d g d a-min a-min
d g e-min b a-min b-7
g a-min d g g a-min 
g2 d-7 g2.
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
            \context Lyrics <\text \nemecky>
        }
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

