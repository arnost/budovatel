\header {
        title = "Hymna sovìtského svazu";
        composer = "A. V. Alexandrov";
	poet = "S. Michalkov, El-Registan";
}

melody = \notes \relative c' {
        \time 4/4;\key bes;
	\partial 8;
	f8 | 
	\repeat folder 2 {
	bes4 f8. g16 a4 d,8 d | g4 f8. es16 f4 bes,8. bes16 |
	c4 c8. d16 es4 es8 f | g4 a8. bes16 c4. f,8 | d'4 c8. bes16 c4
        a8 f |  bes4 a8. g16 a4 d,8 d | g4 f8. es16 f4 bes,8. bes16 |
        bes'4 a8. g16 f2 | d' [ c8 () bes ] [ a () bes ] c4. f,8 f2 | 
	bes [a8 () g ] [f()g] | a4. d,8 d4 r | bes'4 g8. a16 bes4
        g8. a16 | bes4 g8. bes16 es2 | es2 [d8 () c] [ bes () c ] |
	d4. bes8 bes2 | c2 [ bes8 () a] [g ()a ] | bes4. g8 g2 |
	bes4 a8 g f4 bes,8. bes16 | }
	\alternative{{ bes'4 a8. g16 f4 r8 f }{f2 g4 a | bes1 (|) bes8 r
        r4 r2 }}
	        \bar "|.";
}

text = \lyrics {
Kol Ru -- si ve -- li -- ké teï  re -- pu -- blik vol -- ných zní
je -- dno -- ty na vì -- ky svo -- bod -- ný hlas, to z~ná -- ro -- dù
vù -- le je svaz ne -- roz -- bor -- ný. A» ¾i -- je ná¹ mo -- hut --
ný So -- vìt --  ský Svaz!
Slá -- va ti ot -- èi -- no, ty na -- ¹e svo -- bod -- ná, v~ní dru¾
-- by ná -- ro -- dù o -- po -- ra tkví! A» pra -- por so -- vì -- tù,
a» pra -- por li -- do -- vý nás od ví -- tìz -- ství ve -- de k~ví --
tìz -- ství.
}

slovak = \lyrics {
Oj veè -- né sú pev -- nos» a slo -- bo -- da Svä -- zu, èo na ve -- ky 
spo -- ji -- la mo -- hut -- ná Rus, vstal z~ná -- ro -- dov vô -- le a tie ho
aj strá -- ¾ia, nu¾ slá -- va mu slá -- va a v¾dy je -- mu slú¾.
Slá -- va ti ot -- èi -- na, vlas» na -- ¹a slo -- bo -- dná,
zá¹ -- ti -- tu ná -- dej -- nú rod v~te -- be má, zás -- ta -- va so
-- viet-- ska, zá -- sta -- va µu -- do -- vá nech nám v¾dy ví -- »a
-- stvá ve -- li -- ké dá!
}

accompaniment =\chords {
r8 \repeat folder 2 {
 bes2 d-min es bes c-min es c-7 f-7
bes f g-min d-min es bes c-7 f-7
bes1  f     g-min  d-min es es
es    g-min c-min g-min es2 bes
}
\alternative { {es2 f}{
f2 es4 f bes1.}}  

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
            \context Lyrics < \text \slovak>
        }
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

