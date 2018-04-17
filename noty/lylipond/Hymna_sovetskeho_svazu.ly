\header {
        title = "Hymna sov�tsk�ho svazu";
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
Kol Ru -- si ve -- li -- k� te�  re -- pu -- blik vol -- n�ch zn�
je -- dno -- ty na v� -- ky svo -- bod -- n� hlas, to z~n� -- ro -- d�
v� -- le je svaz ne -- roz -- bor -- n�. A� �i -- je n� mo -- hut --
n� So -- v�t --  sk� Svaz!
Sl� -- va ti ot -- �i -- no, ty na -- �e svo -- bod -- n�, v~n� dru�
-- by n� -- ro -- d� o -- po -- ra tkv�! A� pra -- por so -- v� -- t�,
a� pra -- por li -- do -- v� n�s od v� -- t�z -- stv� ve -- de k~v� --
t�z -- stv�.
}

slovak = \lyrics {
Oj ve� -- n� s� pev -- nos� a slo -- bo -- da Sv� -- zu, �o na ve -- ky 
spo -- ji -- la mo -- hut -- n� Rus, vstal z~n� -- ro -- dov v� -- le a tie ho
aj str� -- �ia, nu� sl� -- va mu sl� -- va a v�dy je -- mu sl��.
Sl� -- va ti ot -- �i -- na, vlas� na -- �a slo -- bo -- dn�,
z� -- ti -- tu n� -- dej -- n� rod v~te -- be m�, z�s -- ta -- va so
-- viet-- ska, z� -- sta -- va �u -- do -- v� nech n�m v�dy v� -- �a
-- stv� ve -- li -- k� d�!
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

