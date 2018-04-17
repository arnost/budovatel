\header {
        title = "Na nás to èeká";
        composer = "J. Boháè";
	poet = "E. Sojka";
}

melody = \notes \relative c' {        
\time 2/4 ;\key bes \major;
\repeat volta 2{
f8 d4 es8 | f bes4. | c8. bes16 a8 bes8 | f4 g8 f8 | c d es g |
f4 es | d2 ( | ) d4 r |
f4 d8 es8 | f4. bes8 | c8. bes16 a8 bes8 | f4 r | g8 a bes c | d4 bes
| c2 ( | ) c4 r |
bes4 bes8 c | d4 bes | c c | a8 f4. | bes4 bes8 c | d4 bes | c d |
c r | bes g8 a | bes4 g | f d8 es | f d4. | c4 d | es g | f r | r2 |
bes4 g8 a | bes4 g | f d8 es | f bes4. | g4 bes | 
}

\alternative { { c4 a | bes2 ( | ) bes4 r  }
	     { c4 d  | f2 ( | ) f4 r }}

}

text = \lyrics {

Na nás to èe -- ká, 
nás to ne -- mi -- ne,
a¾ nám bu -- de o pár ro -- kù víc.
Je -- dno -- ho rá -- na, jej -- da je -- mi -- ne,
vy -- le -- tí -- me na Mì -- síc.
Ne¾ a -- le vzlét -- nem k~mlé -- èným dra -- hám,
ne¾ ra -- ke -- tou se po -- ve -- zem,
po -- znej -- me na -- pøed jak je nám dra -- há,
na -- ¹e rod -- ná zem.
po -- znej -- me na -- pøed jak je nám dra -- há,
na -- ¹e rod -- ná zem,  rod -- ná zem.



}

texti = \lyrics {

}



accompaniment =\chords {
bes1 es2 bes4 g:7 c2:min f:7 bes2. r4
bes1 es2 bes4 d:7 g2:min c:7 f2. r4
bes1 c2:7 f bes1 c2:7 f es1 
bes c2:min f:7 bes4 r r2 | es1
bes es2 
f bes2. r4 
f2:7 bes

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


