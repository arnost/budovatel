\header {
   title = "Je�t� nikdy nebylo...";
   composer = "Pavel �t�p�n";
         }

                       melody = \notes \relative c' {
                                \time 2/4;
                               \key d \major;
                       d8 cis d e | fis g a4 | g8 a b cis | d4 a |
		       d,8 cis d e | fis g a4 |  e8 d cis b | a4 a8 r |
                       d8 cis d e | fis g a4 | g8 a b cis | d4 a |
                       d,8 cis d e | fis g a4 | a8 g fis e | d4 d8 r |
		       <d'4 b > < d4 b  > | <b4. g4.>< cis8 a8> | 
                       <d  b>< cis4 a >< b8 g> | < a4 fis > < a4 fis> | 
		       <fis4. d4.> <g8 e8> | < a4 fis > < a4 fis> | 
		       <e cis> <e cis> | <e4. cis4.> <fis8 d8> |
		       <g e><a4 fis>< b8 g> | <a4 fis>< fis d> |
		       <e4. cis> a,8 | d4 d |
                               \bar "|.";
                       }

                       text = \lyrics {
		       Je� -- t� ni -- kdy ne -- by -- lo ze -- le --
		       no tak v~po -- li, ni -- kdy tak -- hle ve --
		       se -- lo, ni -- kdy po v� -- ko -- li.     
		       Je -- �t� se n�m ne -- �i -- lo p� -- kn� 
		       tak a leh -- ko, je -- �t� n�m to o -- bi -- l�
		       tak -- hle ne -- za -- kve -- tlo.
		       Sv� -- ti n�m to slu -- n�� -- ko, sv� -- t�
		       n�m te� ji -- nak. 
		       Hned je vi -- d�t: po -- by -- lo v Kre -- mlu 
		       u~Sta -- li -- na.
 
                       }

                       accompaniment =\chords {
                               d1 | g2 | d1. | e2:7 | a d1 g2 d1.
			       e4:min a:7 d4. r8
			       g1. d a2.. d8 e2:min a:4.6 a d
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
