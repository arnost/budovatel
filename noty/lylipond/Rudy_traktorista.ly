\header {
        title = "Rudý traktorista";
        composer = "E. F. Burian";
	poet = "E. F. Burian";
}

melody = \notes \relative c' {
        \time 4/4;\key f;
\repeat folder 2 {d4 f d f | e2 r | d4 f d f | e4 r r2 |
d4 f d f | g2 bes | }
\alternative {{a4 g f e | d r r2 }  
{a'4 a b cis |}}
d'1 | f | e2 d | 
g,4 a bes r | r bes c d | e1 | d2 c |
f,4 g a2 | r4 a bes c | d1 | c2 bes | 
e,4 f g2 | r2 bes | a2 a | b4 a b cis | 
d4 r r2 | r1 
        \bar "|.";
}

text = \lyrics {
Rá -- no do po -- lí ces -- ta pod ko -- ly
bì -- ¾í a¾ to prá -- ¹í pøes ho -- ry do -- ly.
jak ¾á -- dná ji -- ná. Zpí -- va -- jí
skøi -- va -- ni a  trak -- tor tím rych -- lej 
u -- há -- ní a ran -- ní slu -- níè -- ko z½o -- bla -- kù
se di -- ví to -- mu zá -- zra -- ku.
}

text_ii = \lyrics {
Na -- ¹e ma -- ¹i -- na, pa -- ne, ta to zná,
ta po -- ly -- ká lá -- ny
}

accompaniment =\chords {
\repeat folder 2 {d1-min a-7 d-min a-7
d-min g-min}
\alternative{{ a-7 d-min}
{a-7}} d-min bes a2-7 d-min
g1-min g-min c c 
d-min d-min bes bes a-7
a-7 a-7 a-7 d-min
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
            \context Lyrics <\text \text_ii >
        }
        \midi  { \tempo 4 =200; }
        \paper { linewidth = 18.0\cm; }
}

