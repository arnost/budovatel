\header {
        title = "Pochod jednotn� d�lnick� fronty";
        composer = "Franti�ek Kubr";
	poet = "V�t Nejedl�";
}

melody = \notes \relative c'' {        
\time 4/4;\key bes;
\partial 4;
bes4 | a g bes8 bes a g | es4 es r es |
d g8 a bes4 a8 g | fis4 r r a | g a bes8 bes a g |
d'2 a4 a | d4. g,8 d8. d16 es8 d | g4 r r f |
bes bes a bes | c a8. g16 f4 r | g4 g8 g es'4 es |
c c d r | a c8 bes g4 a | bes4  d, d es | f8 f r4 g g | a a bes r |
        \bar "|.";
}

text = \lyrics {
Chcem vzbu -- dit stro --  je, kte -- r� d�� -- mou. chcem zap -- nout
je na ve� -- n� sp�ch, a s~ni -- mi v~tem -- pu pr� -- ce zp� -- vat
d�l -- n� -- ci kon -- ti -- nen -- t� v�ech!
Hoj, dru -- zi mo -- ji, na -- stu -- pu -- jem,
za na -- �e pr� -- va zn� n� zp�v, my ka� -- dou o -- b�, p�i -- ne
-- se -- me, �i -- vot �t� -- st�, svo -- ji krev.

}

accompaniment =\chords {
g4-min | g1-min | c1-min | g1-min d1-7 |
g1-min | d-7 g2-min d2-7 | g4-min r r f4-7
bes1 f-7 c-min f2 bes2 f2-7 es2 bes1. es2 f2-7 bes4 r
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
