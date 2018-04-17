\header {
        title = "Nade�el �as";
        composer = "Ludv�k Pod鹻";
	poet = "Stanislav Neuman";
}

melody = \notes \relative c' {        
\time 4/4;\key c;
c4 c8 e g8. a16 g8 fis | g2 e4 r | d4 e8 f e4 d |
e4 r r2 | c4 c8 e g8. a16 g8 fis | g2 a4 r |
b8 b  r c d4 a | g4 r r2 | c4  c8 c g4 gis |
a8 a a a r2 | d4 d8 d a ais4. | b4 r r2 |
c,4 c8 e g8. a16 g8 fis | g2 e'4 r | d4 c8 a b4 d | c4 r r2 |
        \bar "|.";
}

text = \lyrics {
Na --  de -- �el �as, kdy t�e -- ba �� -- ci, �� �e je ta -- to zem.
Na -- de -- �el �as, te� pr� -- ko -- pn� -- ci �i -- vot si ro -- hod
-- dnem.
Jde o bu -- dou -- cnost re -- pu -- bli -- ky, o �t� -- st� jde n�m
v�em.
Na -- de -- �el �as. Te� roz -- zvra -- tn� -- ky jak �ko -- dnou vy
-- �e -- nem.
}

accompaniment =\chords {
c1 | c | d2-min g-7 |
c1 c1. a2-min |
g d-7 g1 c2 c-7 f1 d2 d-7 g g-7 
c1. a2-7 d-7 g-7 c4
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
