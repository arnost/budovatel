\header {
   title = "Budujeme";
   composer = "V�clav Dobia�";
   poet = "Franti�ek Halas";
         }

                       melody = \notes \relative c' {
                                \time 4/4;
                               \key g \major;
			       r2 r4 d8. d16 | 
			       \repeat volta 2 {
			       g4 g d d | e e2 r4 |
			       fis8. g16 fis8 e fis4 fis | b2 r4
                                d,8. d16 | g4 g d d | e e2 r4 |
				a8. b16 a8 g a4 a | d2 r | a4 d, d c'
                                | b g g r | a d, d e' | d b b g | c
                                g8. g16 c4 e | a, e8. e16 a4 b | 
				d2 c4 a | g b8. b16 d8. d16 d4 | 
				a4 d, d c' | b g g r |
				a d, d e' | d b b g | c g8. g16 c4 e | 
				a, e8. e16 a4 b | d2 c4 a |
			       }
			       \alternative { {  g4 r r d8. d16}
			       { g2 r  }}
                               
                       }

                       text = \lyrics {
		       Pro -- hra -- je to, kdo se v� -- l�,
		       re -- pu -- bli -- ka pr� -- ce je.
		       To -- mu �est, kdo ne -- za -- h� -- l�,
		       ten je je -- j� na -- d� -- je.
		       Vy -- hr� -- me si ru -- k� -- vy,
		       kdy� se ko -- la za -- sta -- v�.
		       Hej rup! Ho -- la -- hej! A hej! 
		       Ho -- la -- hej! Do pr� -- ce se dej!
		       la la la la la.
       		       Vy -- hr� -- me si ru -- k� -- vy,
		       kdy� se ko -- la za -- sta -- v�.
		       Hej rup! Ho -- la -- hej! A hej! 
		       Ho -- la -- hej! Do pr� -- ce se dej!

		       Ma -- kat dej!
		       
                       }

                       accompaniment =\chords {
		       r1 | g | e:min | b2. fis4:7 | b1 | g |e:min
		       |d2. a4:7 | d2 r4 a | d1:7 | g | d:7 | g |
		       c | a:min | d:7 | g | d:7 | g | d:7 | g | c |
		       a:min | d:7 | g | g |
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


