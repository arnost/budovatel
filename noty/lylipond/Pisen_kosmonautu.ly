\header {
        title = "P�se� kosmonaut�";
        composer = "M. Blant�r";
	poet = "J. Fuchs";
}

melody = \notes \relative c'' {        
\time 4/4 ;\key f \major;
\partial 4; a8. gis16 | a4 c,8. b16 c4 a'8. gis16 | a4 c2 f8. e16 | d4
a8. gis16 a4 e'8. e16 | c2. c8. c16 | c4 bes8. bes16 [ a8 () bes]
c8. bes16 | bes4 a2 a8. a16 | a4 g8. g16 [ fis8 () g ] a8. a16 |
c2. c,8. c16 | c4 f8. a16 c4 f8. e16 | e4 d2 a8. gis16 | a4 c,8. b16
c4 g'8. e16 | f2. c8. c16 | c4 f8. a16 c4 f8. e16 | e4 d2 a8. gis16 | 
a4 c,8. b16 c4 g'8. c16 \partial 2.; f2.
}

text = \lyrics {
Ko -- smo -- naut z~mo -- dra -- v� v�� -- ky vi -- d� kr�s -- n�
sv�t, jak si jej vi -- d�t p��l. Jak jej d��v ne -- spa -- t�il ni --
kdo z~li -- d�, jak jej d��v ni -- kdo z~n�s ne -- po -- znal. So --
v�t -- sk� kos -- mo -- naut k~hv� -- zd�m le -- t�, po -- zdra -- v�
na ne -- bi Vel -- k� v�z. Pro �i -- vot, pro ��as -- tn� � -- sm�v d� --
t� spa -- t�� Zem a na ni rod -- nou Rus.
}

texti = \lyrics {

}



accompaniment =\chords {
c4:7 f2. c4:7 f2. a4:7 d2.:min g4:7 c1
bes2:6 b:min.7 f1:6.4 g:7 c2. c4:7
f2. a4:7 a2. g4:7 f2.:6.4 c4:7 f2. c4:7
f2. a4:7 bes2. g4 f2.:6.4 c4:7 f2.
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


