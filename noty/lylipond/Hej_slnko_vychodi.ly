\header {
        title = "Hej slnko vychod�";
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
Na -- di -- �el sve -- ta no -- v� �as a n�m
za -- svi -- rli kr� -- sne r� -- na, ke� �lo -- vek
pr� -- ce vznie -- sol hlas: zdvi -- hol be -- d� -- ra,
zni -- �il p� -- na. Po -- vznie -- sol pr� -- ce 
vne -- se -- nos�, bo z~nej naj -- v�� -- �ia ply -- nie
sl� -- va. Vy -- kvi -- tli no -- v� z� -- hra -- dy. kde len ho -- l�
p��� pred t�m st� -- la.
Hej, hej, svet sa u� bu -- d�, a o -- trok  str -- hol pu --t� pod z�
-- sta -- vou Le -- ni -- no -- vou,
pod n�m du -- n� zem, hej, pod n�m du -- n� zem, hej, ce -- l� du --
n� zem.
A kr� -- �a sme -- lo hr -- do vpred s~�e -- rve -- nou z� -- sta --
vou u� ce -- l� svet!
Hej, hej, sln -- ko vy -- cho -- d�: za �te -- stie 
pra -- cu -- j� -- cich Stra -- na sa bo -- r�!
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
