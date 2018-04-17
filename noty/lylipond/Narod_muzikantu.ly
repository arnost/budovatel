\header {
        title = "Národ muzikantù";
        composer = "Václav Dobiá¹";
	poet = "Franti¹ek Halas";
}

melody = \notes \relative c'' {        
\time 4/4;\key f \major;
\partial 4;
a8 bes | 
\repeat volta 2 { c4 a f d'|
c4 a2 g8 r16 g | c,2 () c8 c c' r16 c | a4 r r a8 bes |
c4 a f d' c a r g8 g g4 f e g | c r r bes8 r16 c |
d4 d r c8 bes | a4 a r f8 g | a4 a g f | g2 () c8 r a r16 bes |
c4 a f d' | c a r g8 r16 g | c,2 r8 c c' r16 c |
a4 r r a8 r16 bes | c4 a f d' | c a r g8 r16 g | c,2 r8 c c' r16 c |
f,4 r r2 |
}
\alternative { { r2 r4 a8 bes }{ r1 }}
}

text = \lyrics {
®e jsme ná -- rod mu -- zi -- kan -- tù
za -- hra -- je -- me z~ve -- se -- la,
ka¾ -- dé -- mu z~tìch kal -- ku -- lan -- tù,
co sá -- ze -- jí na dì -- la.
Za -- hra -- jem jim od po -- dla -- hy,
bez hou -- slí u na -- ¹ích vrat,
au -- to -- ma -- ty bez ná -- ma -- hy 
na -- u -- èí je tan -- co -- vat,
au -- to -- ma -- ty bez ná -- ma -- hy 
na -- u -- èí je tan -- co -- vat.
}

accompaniment =\chords {
r4 | f2 bes | f2. c4 | c1:7 | f |
f 2 bes | f r4 c | c g:7 c g:7 |
c r2 bes4 | bes2 r4 f | f1 | f2 bes4 d:min |
c2 c8 r8 f4 | f2 bes | f r4 c | c1:7 |
f | f2 bes | f r4 c | c1:7 | f | r2. f4 | r1 |
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


