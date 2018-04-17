\header {
        title = "Na�e zem� je dnes kr�sn�";
        composer = "Franti�ek �auer";
	poet = "Jarom�r Ho�ec";
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
Dnes v~zem -- mi m� na -- v�dy zna -- me -- n�,
�e z�t -- ra je u� v�e -- ra. Zn� v~pr� -- ci n�m p� -- se� 
v� -- t� -- zn� ml� -- dne o -- p�t ze -- m� m�!
Na -- �e ze -- m� je dnes kr� -- sn�, a -- le z� -- tra bu -- de je� -- t�
kr� -- sn�j -- ��, bu -- de bo -- ha -- t� a ��as -- tn�, na -- v�dy
za -- hna -- li jsme b� -- du v�e -- rej -- ��.
V�e -- chny s� -- ly sv� -- ho ml� -- d�, i sv�j mla -- d� sm� -- l� sen 
d� -- me dra -- h� vlas -- ti r� -- di, a� vzkv� -- t� ka� -- d� den!
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


