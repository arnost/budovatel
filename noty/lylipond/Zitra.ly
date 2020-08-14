\version "2.20.0"
\header {
        title = "Zítra"
        composer = "Z. Petr"
	poet = "V. Dvořák"
}

melody = \relative c' {        
\time 4/4 \key c \major
\partial 2
e f | g2 g | f4 g a b | c2 g | r2 c,4 d e2 e | d4 e f g |
e2 r | r d4 c | a'2 a | c b4 a | g2 e | c d4 e | f2 a | g e |
d r | r e4 f | g2 g | f4 g a b | c2 g ~ |  g4 r c, d | e2 e |
d4 e f g | e r r2 | r d4 c | a'2 a | c b4 a | g2 e | c4 r e fis |
g2 b | a4 b c a | d1 ~ |  d4 r r2 | c1 ~ |  c4  b c d | c2 a4 b ~ |
b2 d | c a4 b ~ |  b2 g | e4 r r2 | r dis4 e | g2 e | b c | g' f |
r e4 f | a2 f | cis4 d e f | g2 gis | a b c1 ~ |  c4 b c d |
c2 a4 b ~ |  b r d2 | c a4 b ~ |  b r g2 | e4 r r2 | r dis4 e | g2 f
| e4 f a b | d2 c | b4 c d dis | e2 c | r d c4 r r2 | r1
}

text = \lyricmode {
Dnes -- ka zpí -- vá vše -- cko no -- vou pí -- seň, 
pa -- ni -- ká -- řùm do -- šel při ní dech.
Pí -- seň po -- má -- há, je v~ní od -- va -- ha
do -- být zí -- tra no -- vý břeh.
Slo -- vo zí -- tra ne -- ní pro nás práz -- dné,
slo -- vo zí -- tra to je ja -- ko slib.
Chce -- me v~mí -- ru žít, chce -- me zví -- tě -- zit,
pro -- to dnes -- ka jde nám vše -- chno líp.
Zít -- ra bu -- dem kou -- sek dál,
kdo z~nás by přál si zpět?
Stej -- ně zí -- tra ja -- ko dnes -- ka 
půj -- de s~ná -- mi pís -- nič -- ka jak slun -- ce hez -- ká.
Pís -- nič -- ka jak v~má -- ji květ,
s~tou pře -- sta -- vět chcem svět.
Má -- me ví -- ru v~ra -- dost a svou sí -- lu, 
pro -- to  s~pí -- sní v~mí -- ru
jdem vpřed.
}





accompaniment =\chordmode {
g2:7 c1 g:7 c c | a:m d2:m7 g:7 c s
c1:7 f f c2 e:7 a1:m d:m a:7 d:m g:7
c g:7 c c a:m d2:m e:7 a:m e:7 c1:7 f1.
b2:7 c e a1:m e:m a2:m9 d:7 d1:m9 g:7
c1. c2 d2.:m7 g2.:7 g2:7 d2.:m7 g:7 c4 s
s1 s1. e1:m d:m s1 s1. g1 c2 as:7 d:m7 g:7
c1. c2 d2.:m7 g2:7 s2. d2.:m6 g2:7 s2. e4:7 s
g2:m6 a1:7 d:m d:m a:m d2:7 as:7 c:6.4 a:m7
d:7 g:7 c
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
                               \midi  { \tempo 4=250}
                               \layout { linewidth = 20.0\cm}
                       }


