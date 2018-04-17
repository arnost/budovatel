\header {
        title = "Internacionála";
        composer = "P. Degeyter";
	poet = "E. Pottier";
}

melody = \notes \relative c' {
        \time 4/4;\key g;
	\partial 4;
d4 | g4. fis8 a g d b | e2 c4 r8 e |
a4. g8 fis e d c | b2. d4 | g4. fis8 a g d b |
e2 c8 e a g | fis4 a c fis, | g2 ( ) g8 r b ( )  a |
fis4. fis8 e fis g e | fis2 d8 d cis d | e4. e8 a4. g8 |
fis2 ( ) fis8 r8 a4 | a4. fis8 d d cis d | b'2 g8 e fis g |
fis4 a g e | d2 ( ) d8 r8 b'8. a16 | g2 d4. b8 |
e2 c8 r a'8. g16 | fis2 e4 d | d2 ( ) d8 r8 d4 |
b'2 a4 d,8 d | g2 fis4. fis8 | e4. dis8 e4 a |
a2 ( ) a8 r b8. a16 | g2 d4. b8 | e2 c8 r a'8. g16 |
fis2 e4 d | b'2. b4 | d2 c4 b8 b |
a4. ( ) b8 c4 r8 c | b4. b8 a4. a8 | \partial 2.; g2.
        \bar "|.";
}

text = \lyrics {
Ji¾ vzhù -- ru, psan -- ci té -- to ze -- mì, ji¾
vzhù -- ru v¹i -- chni je¾ hlad zhnìt! Teï du -- ní prá -- vo v~jí --
cnu te -- mnì a vý -- buch za -- hømí na -- po -- sled! Od4 mi -- nu
-- lo -- sti spìj -- me zpá -- tky, o -- tro -- ci vzhù -- ru k~cí --
lùm
svým! Ji¾ chví se svì -- ta zá -- klad vra -- tký, my ni -- èím ne --
jsme, bu -- ïme v¹ím! Pos -- sle -- dní bi -- tva 
vzplá -- la dej -- me se na po -- chod! In -- ter -- na -- ci -- o
--ná -- la je zí -- tøka li -- dský rod, po -- sle -- dní bit -- tva
vzplá -- la, dej -- me se na po -- chod! In -- ter -- na -- ci -- o --
ná -- la je zí -- tøka li -- dský rod.

}

accompaniment =\chords {
r4 g2 g2 c2 c2
d2-7 d2-7 g2 g2 g2 g2
c2 c2 d2 d2 g2 g2 
d2 a2 d2 d2 a2 a2 
fis2 fis2 d2 d2 g2 g2 
d2 a2 d2 r2 g2 g2
c2 c2 d2 d2 g2 g2 
g2 g2 e2-min b2-min c2 a2-min
d2 d2 g2 g2 c2 a2-min 
d2-7 d2-7 g2 g2 e2-7 e2-7 
a2-min a2-min g2 d2 g2.
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
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

