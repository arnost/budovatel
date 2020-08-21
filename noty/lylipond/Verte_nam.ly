\version "2.20.0"
\header {
        title = "Věřte nám" 
        composer = "Kreslich" 
	poet = "Kreslich" 
}

melody =  \relative c' {
\clef treble        
\time 4/4 \key f \major 
d4 d8. d16 e8. e16 f8. e16 | d8. d16 d4 r2 |
g4 g8. g16 g8. a16 c8 bes | a4 r r2 | d4 d8. d16 d8 d e d |
bes8 bes bes4 r2 | g4 g8. g16 g8 f e f | a4 r r2 |
d,4 d8. d16 e8. e16 f8. e16 | d8. d16 d4 r2 | g4 g8. g16 g8. a16 c8 bes|
a4 r r2 | d4 d8. d16 d8 d e d | bes bes bes4 r2 | g4 g8. g16 g8 f e f|
a4 r2 a,8. a16 \key d \major 
d2 ( d8 ) d cis b | cis d cis b a4 a8. a16 | g'2 ( g8 ) g fis e | fis g
fis e d4 d8 d | a'2 ( a8 ) b a g | fis d cis d cis4 b | b8 b g'4. g8 fis
e | e8. e16 e8 fis a g fis e | a,8. a16 d4 ( d8 ) d8 cis b | cis d cis
b a4 a8. a16 | g'2 ( g8 ) g fis e | fis g fis e d4 d8 d | a'2 ( a8 ) b a
g | fis d cis e cis4 b | a8. a16 a'2 fis4 | d2 r |
}

text = \lyricmode {
Dnes vem -- te si do ru -- ky co -- ko -- li,
ať je to pe -- ro, mo -- ty -- ka. 
Ne -- ří -- kej -- te, že vás nic ne -- bo -- lí,
vždyť se to nás všech do -- tý -- ká.
Dnes vem -- te na mi -- nu -- lost kla -- di -- va
a vši -- chni pojď -- te s~ná -- mi vpřed.
ni -- kdo ať ne -- či -- ně se ne -- dí -- vá,
pojď s~ná -- mi sta -- vět lep -- ší svět!
Věř -- te nám, no -- vý svět
lep -- ší mu -- sí být. Věř -- te nám,
že o -- pět sto -- jí za to žít. Nad na -- ším pra -- po -- rem ru --
dá hvěz -- da zá -- ří, ve -- de nás ku -- pře -- du,
ka -- ma -- rá -- di pro -- le -- tá -- ři.
Věř -- te nám, že dá -- me svě -- tu lep -- ší řád, věř -- te nám a 
pojď -- te za něj bo -- jo -- vat,  pro káž -- dé -- ho z~nás je na
svě -- tě dost prá -- ce, jen se jí ne -- bát.
}

accompaniment =\chordmode {
d2:m a:7 | d:m s
g2:m c:7 | f s | bes1 | g2:m s | g1:m |
a4:7 s s2 | d2:m a:7 | d2:m s | g2:m c:7 |
f4 s s2 | bes1 | g2:m s |g1:m | a4:7 s4 s2 |
d1 | a:7 | e2:m a:7 | d1 | d1 | d2 g | e1:m|
a1:7 | d | a:7 | e2:m a:7 | d1 | d |  d2 g | 
a1:7 | a2:7 s |
		}

\score {
       <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
       >>
       \midi  { \tempo 4=120 }
       \layout { linewidth = 20.0\cm  }
}


