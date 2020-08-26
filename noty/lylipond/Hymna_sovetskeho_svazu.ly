\version "2.20.0"
\header {
        title = "Hymna sovětského svazu" 
        composer = "A. V. Alexandrov" 
	poet = "S. Michalkov, El-Registan" 
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key bes \major 
	\partial 8 
	f8 | 
	\repeat volta 2 {
	bes4 f8. g16 a4 d,8 d | g4 f8. es16 f4 bes,8. bes16 |
	c4 c8. d16 es4 es8 f | g4 a8. bes16 c4. f,8 | d'4 c8. bes16 c4
        a8 f |  bes4 a8. g16 a4 d,8 d | g4 f8. es16 f4 bes,8. bes16 |
        bes'4 a8. g16 f2 | d'  c8 ( bes )   a ( bes )  c4. f,8 f2 | 
	bes a8 ( g ) f (g )  | a4. d,8 d4 r | bes'4 g8. a16 bes4
        g8. a16 | bes4 g8. bes16 es2 | es2 d8 ( c )  bes ( c )  |
	d4. bes8 bes2 | c2  bes8 ( a ) g ( a )  | bes4. g8 g2 |
	bes4 a8 g f4 bes,8. bes16 | }
	\alternative{{ bes'4 a8. g16 f4 r8 f }{f2 g4 a | bes1 ~| bes8 r
        r4 r2 }}
	        \bar "|." 
}

text = \lyricmode {
Kol Ru -- si ve -- li -- ké teď  re -- pu -- blik vol -- ných zní
je -- dno -- ty na vě -- ky svo -- bod -- ný hlas, to z~ná -- ro -- dů
vů -- le je svaz ne -- roz -- bor -- ný. Ať ži -- je náš mo -- hut --
ný So -- vět --  ský Svaz!
Slá -- va ti ot -- či -- no, ty na -- še svo -- bod -- ná, v~ní druž
-- by ná -- ro -- dů o -- po -- ra tkví! Ať pra -- por so -- vě -- tů,
ať pra -- por li -- do -- vý nás od ví -- těz -- ství ve -- de k~ví --
těz -- ství.
}

slovak = \lyricmode {
Oj več -- né sú pev -- nosť a slo -- bo -- da Svä -- zu, čo na ve -- ky 
spo -- ji -- la mo -- hut -- ná Rus, vstal z~ná -- ro -- dov vô -- le a tie ho
aj strá -- žia, nuž slá -- va mu slá -- va a vždy je -- mu slúž.
Slá -- va ti ot -- či -- na, vlasť na -- ša slo -- bo -- dná,
záš -- ti -- tu ná -- dej -- nú rod v~te -- be má, zás -- ta -- va so
-- viet-- ska, zá -- sta -- va µu -- do -- vá nech nám vždy ví -- ťa
-- stvá ve -- li -- ké dá!
}

accompaniment =\chordmode {
s8 \repeat volta 2 {
 bes2 d:m es bes c:m es c:7 f:7
bes f g:m d:m es bes c:7 f:7
bes1  f     g:m  d:m es es
es    g:m c:m g:m es2 bes
}
\alternative { {es2 f}{
f2 es4 f bes1.}}  

		}

\score {
        <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \slovak
       >>
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

