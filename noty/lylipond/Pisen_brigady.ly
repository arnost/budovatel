\header {
        title = "P�se� brig�dy";
        composer = "Dmitrij �ostakovi�";
	poet = "B. Kornilov";
}

melody = \notes \relative c'' {        
\time 2/4;\key f;
\partial 8;
c8 | c4 d8 c | bes4 a8 g | f4 c ( | ) c r8 c |
f4 g8 a | bes4 a8 g | c2 ( | ) c4 r8 c | c4 d8 c |
bes4 a8 g f4 c | r r8 f  | bes4 a8 g | c4 a8 g |
f2 | r4 r8 f | g4. a8 | bes4. d8 | c4. a8 |
f4 f' |  d2 | bes2 c | r4 r8 f, | f'4. f8 |
e4. d8 c4. a8 d4 c | bes2 | g | f | r 
        \bar "|.";
}

text = \lyrics {
N�s vzbu -- di -- lo r� -- no ji� chla -- dn�, 
sem od �e -- ky v� -- tr jde bl�. Co� ty ne -- m� ra -- do -- sti ��
-- dn�, kdy� si -- r� -- ny t�n u -- sly -- ��?
Jen vzbu� se vst� -- vej, d� -- vko m� si -- r� -- na zn�, te� ze --
m� na -- �e j� -- ti m� do no -- v�ch dn�.
}

accompaniment =\chords {
r8 f2 c-7 f1. c2-7 f1. c2-7 f1 bes2 c2-7
f1 bes2 c2-7 f1 bes f bes f2 d2-7 g-min c-7 f
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
