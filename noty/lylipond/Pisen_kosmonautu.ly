\header {
        title = "Píseò kosmonautù";
        composer = "M. Blantìr";
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
Ko -- smo -- naut z~mo -- dra -- vé vý¹ -- ky vi -- dí krás -- ný
svìt, jak si jej vi -- dìt pøál. Jak jej døív ne -- spa -- tøil ni --
kdo z~li -- dí, jak jej døív ni -- kdo z~nás ne -- po -- znal. So --
vìt -- ský kos -- mo -- naut k~hvì -- zdám le -- tí, po -- zdra -- ví
na ne -- bi Vel -- ký vùz. Pro ¾i -- vot, pro ¹»as -- tný ú -- smìv dì --
tí spa -- tøí Zem a na ni rod -- nou Rus.
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


