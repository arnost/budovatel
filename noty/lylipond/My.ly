\header {
        title = "";
        composer = "";
	poet = "";
}

melody = \notes \relative c'' {        
\time 4/4;\key es \major;
c4 c bes g | c c bes g | d'8 c bes a bes4 g | c r4 r2|
c4 c bes g | c c bes g | d'8 c bes a bes4 g | c r4 r8 g g g \bar "||";
\key c \major;
a4 a g g | a2 r8 g g g a4 a c c | a r r8 c c c |
d4 d c  c | d2 r8 c c c | d4 d e e |  c r r2 | 
r2 r8 g g g | a4 a g g |
a4 r4 r8 g g g | a4 a c c | a r r8 c c c |
d4 d c c | d2 r8 c c c | d4 d e e c r8 r2 
        \bar "|.";
}

text = \lyrics {

Bu -- dou -- ctnost nám ne -- u -- ste -- le, my si sa -- mi u -- ste
-- lem,
roz -- dr -- tí -- me ne -- pøí -- te -- le po hu -- sit -- sku, po na
-- ¹em. 
Z~nás ni -- kdo u¾ se ne -- po -- dá ná¹ po -- vel k~bo -- ji; Svo --
bo -- da!
Z~nás ni -- kdo u¾ se ne -- po -- dá ná¹ po -- vel k~bo -- ji; Svo --
bo -- da!
Z~nás ni -- kdo u¾ se ne -- po -- dá ná¹ po -- vel k~bo -- ji; Svo --
bo -- da!
Z~nás ni -- kdo u¾ se ne -- po -- dá ná¹ po -- vel k~bo -- ji; Svo --
bo -- da!
}

accompaniment =\chords {
c2:min g4:min c:min | c2:min g4:min c:min | g1:min | c:min |
c2:min g2:min | c2:min g4:min c:min | g1:min | c |
c | c | c | d:min | d:min | d:min | d2:min g | c1 |
c | c | c | c | d:min | d:min | d:min |d2:min g | c |
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
