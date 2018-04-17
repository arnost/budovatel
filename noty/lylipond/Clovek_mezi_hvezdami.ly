\header {
        title = "Èlovìk mezi hvìzdami";
        composer = "Z. Marat";
	poet = "J. Fijezová";
}

melody = \notes \relative c' {        
\time 4/4 ;\key c \major;
\partial 2.; b8 b b b b4 | g' g r r8 g | e e d e d c c16 c8 e16 |
a8 a a e a a a d, | g4 r r8 g g g | c c c a b b b a | d2. r8 e, | 
g g g e g4 e | g8 e r4 f8 e f g | a a a a f e f g | a2. bes8 c |
d4 d \times 2/3 {c d c} | bes8 a g f g a f g | a4 r r d,8 e |
g f f4 r r8 c | 
\key a \major; cis2 r | e4 fis e b' | a e e2 ( | ) e2 fis4 gis | a1 |
gis4 fis e dis | fis e e r | r2 r4 e | g g e fis | g g fis e | fis2 r
| r fis4 gis | a a fis gis | a a gis fis | gis2 r | fis4 gis a fis |
b a gis fis | e cis cis2 | r e4 fis | e e2. | e4 b2. | d4 cis2.|  r1 |
r4 a8 a a a  a4 | cis8 cis r4 r2 | r1 |


}

text = \lyrics {
Je -- ho jmé -- no je èlo -- vìk.
Nic lid -- ské -- ho mu ne -- ní ci -- zí.
Snad chví -- li mìl i v~kout -- ku srd -- ce strach.
kdy¾ hømì -- ly mo -- to -- ry a cíl byl v~te -- mno -- tách.
Pak nes -- mír -- né jen ti -- cho by -- lo,
¹u -- mì -- ly jen pøí -- stro -- je a od -- ví -- jel se pás.
a -- by na -- v¾dy na -- v¾dy -- cky za -- zna -- me -- nal pr -- vní
lid -- ský hlas me -- zi hvìz -- da -- mi. 
A on, èlo -- vìk do -- sud ne -- zná -- mý sám a sám 
le -- tí, le -- tí nad ná -- mi.
V~té ne -- ko -- neè -- né fi -- a -- lo -- vé tmì.
Kde i slun -- ce je jen je -- dna z~mno -- ha hvìzd.
Od -- po -- ví -- dá na do -- ta -- zy ze ze -- mì mìk -- kou 
zpìv -- nou rus -- kou øe -- èí...
Je -- ho jmé -- no je èlo -- vìk.
}

texti = \lyrics {

}



accompaniment =\chords {
c2. f1:6 e2:7 a:min a:min.6 f:6
e:min.7 a:min a:min.6 b:7 e1 c2 f:6
c c:7 f:6 c:7 f:5-.6 f:7 bes d:7
g:min g:7 f:6.4 bes:7 f1| a
d2:5+ e:7 a e:7 a1 fis:min fis2:min b:7 e1
e cis fis:7 b b dis:5- gis:7 cis:min d d cis:min fis
b:min e a r d a 
		}

                       \score {
                               \simultaneous {
                       %         \accompaniment
                                 \context ChordNames \accompaniment

                                 \addlyrics
                                   \context Staff = mel {
                                     \property Staff.noAutoBeaming = ##t
                                     \property Staff.automaticMelismata = ##t
                                     \melody
                                   }
                                   \context Lyrics \text
                               }
                               \midi  { \tempo 4=120;}
                               \paper { linewidth = 20.0\cm; }
                       }


