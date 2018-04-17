\header {
        title = "Mládí";
        composer = "A. Honneger";
	poet = "P. V. Couturier";
}

refren = \notes {
e4. g4. | c4. ( ) c4 e,8 | f4 ( ) e8 f4 ( ) a8 | g4. d4 d8 |
e4. d4 c8 | a'4. a4. | g2. ( | ) g2. | g4. c,4. | f4. g4 a8 |
bes4. bes4. | a4. f4. | a4. g4 ( ) fis8 | g4. a4 ( ) b8 | c4. c4. |
c4 ( ) b8 a4 ( ) g8 | c4. b4 a8 | g4. f4. | e4. f4. | g2. |
a4. b4 c8 | e,4. g4 ( ) f8 | e4. d4. | c2. 
}

melody = \notes \relative c'' {        
\time 6/8;\key c;
r4 g8 e4 d8 | c4 d8 e4 d8 | g4 g8 e4 d8|
c4 d8 e4 e8 | c2. | r4 g'8 e4 d8 | c4 d8 e4 d8 |
g4 e8 g4 a8 | b4 b8 fis4 g8 | e4. ( ) e4. | a8 a a g4 g8 |
a4 a8 g4. | g8 a b c4 c8 | c4 e8 d4 c8 | g2. | g4. ( ) g4 r8 |
\refren 
        \bar "|.";
}


text = \lyrics {
Dnes v¹e -- chno mlá -- dí s~ná -- mi jde, je¾ vzne -- ¹e -- ný si na
-- ¹lo cíl: chcem a -- by èlo -- vìk lé -- pe ¾il, své sí -- ly k~to
-- mu sje -- dno» -- me 
Jdem zni -- èit bí -- du bo -- jem svým, ú -- smìv zas dá -- me ne --
¹»a -- stným a pí -- seò.

K~cí -- li blí¾ se mlá -- de¾ bi -- je. Zøí pøed se -- bou no -- vý
den. Ná -- rod v~prá -- ci tam ¹»a -- stnì ¾i -- je, ka -- ¾dý èlo --
vìk ve -- se -- lý je.
Pøed se -- bou má -- me no -- vý den,
my dá -- me lá -- sku ra -- dost v¹em.
}

accompaniment =\chords {
c1. g2.-7 c4. g4.-7 c2. r4 g2-7 | c1.
b2.-7 e2.-min d4.-min g4.-7
d4.-min g4.-7 c2. d2.-7 g1.-7 
c4. g4.-7 a2.-min d2.-min g2.-7 c2.
f2. c2. g2.-7 c2. f2. c2.-7 f2. 
g-7 c d-7 g c g-7 c4. g4.-7 c2.
f c g-7 c
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
