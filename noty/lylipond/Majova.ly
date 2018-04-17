\header {
        title = "Májová";
        composer = "V. Dobiá¹";
	poet = "V. Závada";
}

melody = \notes \relative c' {
        \time 2/4;\key d;\tempo 4=100;
d8 d e a | fis4 a | g8 a bes4 | a4 r | fis8 fis gis cis, |
a'4  cis | b8 cis d4 | cis4 r 
\repeat volta 2 { b b | d4. b8 | a8 g fis g |
a2 | g8 fis e fis | g4 a |}
\alternative {
{  fis2 ~ | fis4  r4  }  
{< {d2} {d'2} > ~| <{d4  r}{ d'4 r}> }}


        \bar "|.";
}

text = \lyrics {

Mi -- lá mo -- je mi -- lá, do -- bøe je mi na té na -- ¹í
krá -- sné rod -- dné ze -- mi.
Já -- sej zpí -- vej, ná¹ pra -- po -- re,
vlaj, sla -- ví -- me dnes Pr -- vní máj. máj.


}

accompaniment =\chords {
d4 a d2 a2-7 d fis4-min cis4
fis2-min e2 a  
g2 g2 d d a a 
d2 r2  d2  r2 
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
        \midi  { }
        \paper { linewidth = 18.0\cm; }
}
