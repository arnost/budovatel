\header {
        title = "Na¹e zemì je dnes krásná";
        composer = "Franti¹ek ©auer";
	poet = "Jaromír Hoøec";
}

melody = \notes \relative c'' {        
\time 4/4;\key f \major;

a4 d8. c16 a4 f8. g16 | a4 a a2 |
g4 bes8. a16 g4 f | g2 c,4 r |
f4 e8. f16 a4 gis8. a16 |
d4 c b2 | b8. b16 a8 b ais4 b | e2. a,8. gis16 |
\key d \major; a4 fis e d | fis4 fis2 a8 b | d8. d16 d8 b a8. a16 a8
fis | e4 r r b'8. ais16 | b4 g fis e | b'4 b r cis8 d | e8. e16 e8 c
a8. a16 a8 g | fis2. d'8. cis16 | d4 d, cis d | cis'2 b4 a8 b |
a4 g g d | fis r r fis8. f16 | e4 g b cis | d2 a4 d | e4. e8 d4 cis |
d2. r4 
        \bar "|.";
}

text = \lyrics {
Dnes v~zem -- mi mé na -- v¾dy zna -- me -- ná,
¾e zít -- ra je u¾ vèe -- ra. Zní v~prá -- ci nám pí -- seò 
ví -- tì -- zná mlá -- dne o -- pìt ze -- mì má!
Na -- ¹e ze -- mì je dnes krá -- sná, a -- le zí -- tra bu -- de je¹ -- tì
krá -- snìj -- ¹í, bu -- de bo -- ha -- tá a ¹»as -- tná, na -- v¾dy
za -- hna -- li jsme bí -- du vèe -- rej -- ¹í.
V¹e -- chny sí -- ly své -- ho mlá -- dí, i svùj mla -- dý smì -- lý sen 
dá -- me dra -- hé vlas -- ti rá -- di, a» vzkvé -- tá ka¾ -- dý den!
}

accompaniment =\chords {
d1:min d2.:min a4:min g2:min c1 c2:7 d1:min d2:min d2:min.6 e1
a2.:7 d4 d1 d d2 fis:min c a:7 a1:7 g2:6 a1.:7 d2. f4:min g1
g2 b:7 e:min g:min d e:7 a1:7 d g2 d4 a:7 d2. a4

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


