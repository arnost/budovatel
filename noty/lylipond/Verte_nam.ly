\header {
        title = "Vìøte nám";
        composer = "Kreslich";
	poet = "Kreslich";
}

melody = \notes \relative c' {        
\time 4/4;\key f \major;
d4 d8. d16 e8. e16 f8. e16 | d8. d16 d4 r2 |
g4 g8. g16 g8. a16 c8 bes | a4 r r2 | d4 d8. d16 d8 d e d |
bes8 bes bes4 r2 | g4 g8. g16 g8 f e f | a4 r r2 |
d,4 d8. d16 e8. e16 f8. e16 | d8. d16 d4 r2 | g4 g8. g16 g8. a16 c8 bes|
a4 r r2 | d4 d8. d16 d8 d e d | bes bes bes4 r2 | g4 g8. g16 g8 f e f|
a4 r2 a,8. a16 \key d \major;
d2 () d8 d cis b | cis d cis b a4 a8. a16 | g'2 () g8 g fis e | fis g
fis e d4 d8 d | a'2 () a8 b a g | fis d cis d cis4 b | b8 b g'4. g8 fis
e | e8. e16 e8 fis a g fis e | a,8. a16 d4 () d8 d8 cis b | cis d cis
b a4 a8. a16 | g'2 () g8 g fis e | fis g fis e d4 d8 d | a'2 () a8 b a
g | fis d cis e cis4 b | a8. a16 a'2 fis4 | d2 r |
}

text = \lyrics {
Dnes vem -- te si do ru -- ky co -- ko -- li,
a» je to pe -- ro, mo -- ty -- ka. 
Ne -- øí -- kej -- te, ¾e vás nic ne -- bo -- lí,
v¾dy» se to nás v¹ech do -- tý -- ká.
Dnes vem -- te na mi -- nu -- lost kla -- di -- va
a v¹i -- chni pojï -- te s~ná -- mi vpøed.
ni -- kdo a» ne -- èi -- nì se ne -- dí -- vá,
pojï s~ná -- mi sta -- vìt lep -- ¹í svìt!
Vìø -- te nám, no -- vý svìt
lep -- ¹í mu -- sí být. Vìø -- te nám,
¾e o -- pìt sto -- jí za to ¾ít. Nad na -- ¹ím pra -- po -- rem ru --
dá hvìz -- da zá -- øí, ve -- de nás ku -- pøe -- du,
ka -- ma -- rá -- di pro -- le -- tá -- øi.
Vìø -- te nám, ¾e dá -- me svì -- tu lep -- ¹í øád, vìø -- te nám a 
pojï -- te za nìj bo -- jo -- vat,  pro ká¾ -- dé -- ho z~nás je na
svì -- tì dost prá -- ce, jen se jí ne -- bát.
}

accompaniment =\chords {
d2:min a:7 | d:min r
g2:min c:7 | f r | bes1 | g2:min r | g1:min |
a4:7 r r2 | d2:min a:7 | d2:min r | g2:min c:7 |
f4 r r2 | bes1 | g2:min r |g1:min | a4:7 r4 r2 |
d1 | a:7 | e2:min a:7 | d1 | d1 | d2 g | e1:min|
a1:7 | d | a:7 | e2:min a:7 | d1 | d |  d2 g | 
a1:7 | a2:7 r |
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


