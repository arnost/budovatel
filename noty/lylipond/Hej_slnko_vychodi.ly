\header {
        title = "Hej slnko vychodí";
        composer = "B. Urbanec";
	poet = "B. Urbanec";
}

melody = \notes \relative c' {        
\time 2/4;\key f;
d8 d4 cis8 | d4 e | f e | d f8 g |
a a4 g8 | a4 c | a2 | a4 r | d,8 d4 cis8 |
d4 e | f g | a bes8 d | a8 a4 g8 |
f4 e | d2 | d8 r r4 | d8 d4 cis8 | d4 e |
f [ e8 ( ) a ] | d,4 f8 g | a8 a4 g8 | a4 c |
a2 a4 r | d,8 d4 cis8  | d4 e | f [ g8 ( ) bes ] |
a4 bes8 d | a8 a4 g8 | f4 e | d2 d8 r r4 |
\key d;
\repeat volta 2 {
a'2 | d2 | cis8 [ b16 ( ) d ] b8 g | a2 | r8 e fis gis |
a8 b a gis | fis e fis gis | a cis b a |
gis fis fis d | e r a4 | gis8 fis fis d |
e r a4 | gis16 fis8. fis8 d | e2 ( | ) e2 |}

r8 e fis8. g16 | a4 a | [fis16 ( ) a8. ] e4 | a8 r r4 | r8 b cis d |
cis8. b16 b4 ( | ) b8 cis b [ b16 ( ) e ] | a,8 r r4 | r2 |
a | d | cis8 [ b16 ( ) d ] b8 g | a2 | r8 e fis g |
a b cis d | e e d cis | d2 ( | ) d8 r8 r4 | 
        \bar "|.";
}

text = \lyrics {
Na -- di -- ¹el sve -- ta no -- vý èas a nám
za -- svi -- rli krá -- sne rá -- na, keï èlo -- vek
prá -- ce vznie -- sol hlas: zdvi -- hol be -- dá -- ra,
zni -- èil pá -- na. Po -- vznie -- sol prá -- ce 
vne -- se -- nos», bo z~nej naj -- väè -- ¹ia ply -- nie
slá -- va. Vy -- kvi -- tli no -- vé zá -- hra -- dy. kde len ho -- lá
pú¹» pred tým stá -- la.
Hej, hej, svet sa u¾ bu -- dí, a o -- trok  str -- hol pu --tá pod zá
-- sta -- vou Le -- ni -- no -- vou,
pod ním du -- ní zem, hej, pod ním du -- ní zem, hej, ce -- lá du --
ní zem.
A krá -- èa sme -- lo hr -- do vpred s~èe -- rve -- nou zá -- sta --
vou u¾ ce -- lý svet!
Hej, hej, sln -- ko vy -- cho -- dí: za ¹te -- stie 
pra -- cu -- jú -- cich Stra -- na sa bo -- rí!
}

accompaniment =\chords {
d2.-min a4-7 d-min a-7 d2-min 
f4 c-7 f bes-7 f2 a-7 d2.-min
a4-7 d-min c-7 f g-min d2.-min
a4-7 d2.-min r4 d2.-min a4
d-min a-7 bes2 f2. bes4-7
f2 a4-7 r d2.-min a4 d4-min c 
f4 g-min d4.-min c8-7 f4 a-7 d2. r4 |
d1 g2 d r8 e4.-7
a2 e-7 a
d a d
a d e1
e2-min a1 d e-7 a2 a-7
d1 g2 d a1-7 a2 d 
		}

\score {
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff = mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
