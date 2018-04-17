\header {
        title = "P�se� pr�ce";
        composer = "J. Scheu";
	poet = "J. Zapf";
}

melody = \notes \relative c' {
        \time 4/4;\key f;
	\partial 4;
c4 | \repeat volta 2 { f4. c8 a4 c | f g a f8 ( ) g | a4. g8 a4 bes |
c4. bes8 a4 g | f4 e8 ( ) f a4. g8 | g4 r r c, |
e4. c8 e  f g a | bes2 ( ) bes8 r c,4 | a'4. g8 f8 ( ) g a ( ) bes |
c4. bes8 a4 f | d'2 d | c4 r r f, | g2 c2 |
}
\alternative{{ f,4 r r c }{ f4 r r2 }}

        \bar "|.";
}

text = \lyrics {
�, za -- zni p� -- sni vzne -- �e -- n�, o pr� -- ci kte -- r�
vro -- ze -- na p�� -- ro -- dou lid -- stvu jest. V�e, �e -- ho �lo
-- v�k u -- �� -- v�, z~�le -- che -- tn� pr� -- ce vy -- pl� --
v�. Bu� pr� -- ci �est, bu� pr� -- ci �est. Ta �est.
}

accompaniment =\chords {
r4 f2. c4-7 d4-min c4-7 f2.  c4-7 f c-7
f2. c4-7 d2-min g2-7 c2-7 r2
c2-7 c2-7 g2.-min c4-7 f c-7 f2
f2. f4-7 bes2 bes2 f4 r2 d4-min g2-min c2-7 
f4 r2. f4 r2.
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

