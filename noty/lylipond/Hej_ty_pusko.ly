\header {
        title = "Hej ty pu¹ko";
        composer = "E. Toman";
	poet = "J. Mare¹";
}

melody = \notes \relative c'' {
        \time 2/4;\key d;
a4. g8 | fis4 a | d4. e8 | d4 b | a b |
a d, | e2 ( | ) a | a4. g8 | fis4 a | d4. e8 | d4 b |
a fis | e a | d, r | r2 | e4. g8 | fis4 e |
fis4. a8 | g4 fis | b4. cis8 | d4 e | fis2 ( | ) fis8 r8 r4 |
fis4. e8 | d4 b | a4. b8 | a4 fis | e4. fis8 | g4 b |
a2 ( | ) a8 r r4 | fis'4. e8 | d4 b | a4. b8 | a4 fis |
b cis | d e | d8 r r4 
        \bar "|.";
}

text = \lyrics {
Hej, ty pu¹ -- ko, pu¹ -- ko, mo -- je, jak já 
tì mám rád, èe -- ka -- jí nás tì¾ -- ké bo -- je,
pù -- jdem bo -- jo -- vat.
Kdy¾ u¾ pù -- jdem ne -- dá -- me  se,
bu -- dem svor -- nì stát,
v½ste -- pích ho -- rách ne -- bo v½le -- se bu -- de -- me se rvát.
v½ste -- pích ho -- rách ne -- bo v½le -- se bu -- de -- me se rvát.
}

accompaniment =\chords {
d1  g  d4 g 
d2 g a-7 d1 g 
d2 g4 a-7 d1 a-7
d g2 e4-min a-7 d1.
g2 d1 a d1. g2 d1 g2 e4-min a-7 d2
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

