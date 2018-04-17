\header {
        title = "Brig�dnick� pochod";
        composer = "E. Sz�kely";
	poet = "I. Raics";
}

melody = \notes \relative c' {        
\time 4/4;\key e;
b4 b b'b | fis8 gis a b gis e4. | fis8 gis a gis fis e4. |
b2 b4 r | b4 b b' b | fis8 gis a b gis e4. | fis8 gis a b gis fis4.
e2 e4 r 
\repeat volta 2 {
<{e'2 cis4 cis } { cis2 a4 a }> | <{b4. cis8 b2}{gis4 a4 gis2 }> |
b4 gis8 a b4 gis8 fis | e4. cis8 b4 r | b b b' b |
fis8 gis a b gis e4. | 
<{e'4 cis b gis | b8 b cis dis e2 }{ cis4 a gis e | b'8 a gis fis e2 }>
}

        \bar "|.";
}

text = \lyrics {
Le -- t� p� -- se� s~k�� -- dly v� -- tru le -- t�,
s~k�� -- dly v� -- tru le -- t�,
p� -- d�. Je -- de, je -- de, je -- de do vsi na -- �� na bri -- g� --
du sv� -- �� ml� -- d�. Sly�, pi -- la - p� -- se� hr�, stroj hu -- ��, zp�v
na -- �� pr� -- ce zn�.
Pil -- n� ru -- ce bu -- du -- j� a zdo -- b� �i -- vot no -- v� pra
-- c� li -- du h�m�.
}

accompaniment =\chords {
e1 b2-7	e b-7 e b1-7 e b2-7 e b1-7 e
a e e fis2-7 b-7 e1 b2-7 e a e b-7 e
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
