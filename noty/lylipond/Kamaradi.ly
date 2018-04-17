\header {
        title = "Kamar�di";
        composer = "??";
	poet = "??";
}

melody = \notes \relative c' {        
\time 4/4;\key f;
\partial 4;
c8 f | a4 a r c,8 f | a4 a r c,8 f |
a4 a bes a | g2 r4 g8 f | e4 c r g'8 f |
e4 c r g'8 f | e4 c bes' a \bar "||";
\time 2/4;
g8 c, f g | a4 a | r8 a g f | a4 a | r8 c, f g |
a4 a | a bes8. a16 | a2 | g8 r bes8. c16 |
d4 d | e d | f2 | c4 a8 bes | a4 g | a bes |
c2 | r4 bes8. c16 | d4 d | e d |
f2 c4 a8 bes | a4 g | bes a | f2 | r
        \bar "|.";
}

text = \lyrics {
Ka -- ma -- r� -- di, je to ml� -- d�,
kte -- r� mus dnes pa -- t�� sv�t, vzduch se �i -- st�, ji� fa -- �is
-- ti ne -- bu -- dou n�m po -- rou -- �et. Je ko -- nec b� -- dy, je
ko -- nec hla -- du, je ko -- nec zlo -- d�j -- sk�ch sv� -- ta -- ��
-- d�, ka -- ma -- r� -- di je to ml� -- d�, kte -- r� -- mu dnes pa
-- t�� sv�t, ka -- ma -- r� -- di je to ml� -- d�, kte -- r� -- mu dnes pa
-- t�� sv�t.
}

accompaniment =\chords {
r4 | f1 | f1 | f1 |
g2-min r4 c2.-7 r4 g-min |
c2-7 r4 g-min | c2-7 g4-min f8 c-7 |
c2-7 f1 f f c-7 g2-min | f2-dim | f2. c4-dim |
c1-7 | f4. f8-7 | r4 g-min | bes2 f-dim |
f c-dim | c1-7 f2
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
