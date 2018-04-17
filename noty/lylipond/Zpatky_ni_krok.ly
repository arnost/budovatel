\header {
        title = "Zpátky ni krok";
        composer = "J. Stanislav";
	poet = "O. Rambousková-Nejedlý ";
}

melody = \notes \relative c'' {        
\time 4/4;\key d;
\partial 4;
a,4 fis'4. e8 d4 e8 g | fis4. e8 d4 fis8 fis | b4 b fis g |
a4 r r fis8 fis | b4 b a gis | cis4. a8 fis4 cis'8 cis | b4 b a gis |
fis4 r r a | d4. fis,8 fis4 d' | cis4. a8 fis4 cis' | b4. d,8 d4 b' |
a4 r r a | b b cis cis | <  { cis4.   b8   b4  b4 } { e4. d8 d4 d  } >  | 
< { g2   a4    a4 } { e2 a4 a  } >   | < fis4 d' > r r ||
        \bar "|.";
}

text = \lyrics {
Pojï, ná -- ro -- de, vìr -- ný ná -- ro -- de, s~pre -- si -- den -- tem Gott -- wal -- dem
on nás ve -- de stá -- le vý¹ a vý¹ sku -- te -- ènost u¾ ne -- ní snem. Kdos
ví -- tì -- znì s~ním bo -- jo -- val mu stùj po bo -- ku bok.
Ji¾ vzhù -- ru, vzhù -- ru sou -- dru -- zi a zpát -- ky ni krok.
}

accompaniment =\chords {
r4 d2. a4-7 d2  d2 b2-min g2
d2 d2 b2-min cis2 fis2-min fis2-min b2-min cis2-7
fis2-min a2-7 d2 d2 fis2-min fis2-min g2 g2 
d2 d2 g2 fis2-7 b2-min b2-min e2-min a2-7 d2
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
