\header {
        title = "Vpøed smìle soudruzi spìjme";
        composer = "Revoluèní tradicionál";
	poet = " L. P. Radin";
}


PrvniHlas = \notes {
g4 fis8. g16 a4 g8 fis | g2 e |
g4 fis8. g16 a4 b8. b16 | c2. r4 |
}

DruhyHlas=\notes{
e,4 dis8. e16 f4 e8 dis | e2 c |
e4 dis8. e16 f4 f8. f16 | e2. r4 |
}

DruhyHlasRep=\notes{
f,4 f8. g16 a4 g8. f16 | e4 ( ) c' c2 |
d4 b8. a16 g4 f8. d16 | c2 r4

}

PrvniHlasRep = \notes {
a4 a8. b16 c4 b8. a16 | g4 ( )e' e2 |
f4 d8. c16 b4 a8. b16 | c2 r |
}

melody = \notes \relative c'' {        
\time 4/4;\key c;
<
\PrvniHlas
\DruhyHlas
>
\repeat volta 2{
<
\PrvniHlasRep
\DruhyHlasRep
>
}

        \bar "|.";
}

text = \lyrics {
Vpøed smì -- le sou -- dru -- zi spì -- jme,
ro -- zní -- til boj sí -- lu v~nás,
svo -- bo -- dou ce -- stou se de -- jme,
v~boj za ni pù -- jde -- me v~ráz.
}

accompaniment =\chords {
c2 f4 c | c1 |
c2 g-7 | c1
f c g-7 c2 r4
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
        \midi  { \tempo 4 =120;}
        \paper { linewidth = 18.0\cm; }
}
