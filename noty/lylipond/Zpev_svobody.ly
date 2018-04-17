\header {
        title = "Zpìv Svobody";
        composer = "J. Seidel";
}
\include "paper16.ly"
melody = \notes \relative c' {
        \time 4/4;\key f;\tempo 4=100;
c4 c f2 | g8 a bes g a4 f | a8 bes c d c4 a |
g2. r4 | d4 d g2 | g8 a bes c d4 f |
c8 d c bes a4 g | f2 r4 f8 f |  f'2 () f8  d bes d |
c4 a2. | g8 d' c bes a4 b | c2 r4 f,8 f |
f'2 ( ) f8  d bes d | c4 a2.  | g8 d' c bes a4 g | f2. r4 |
        \bar "|.";
}

text = \lyrics {
To jsem já, já svo -- bo -- da mla -- dá v~èer -- ve -- ný kvìt roz --
kve -- tlá,
to jsem já z~dì -- su dý -- ma -- vých mìst,
z~dì -- su bí -- dy vy -- ro -- stlá.
To jsem já, svo -- bo -- da mla -- dá, v~èer -- ve -- ný kvìt
roz -- kve -- tlá
To jsem já, svo -- bo -- da mla -- dá, v~èer -- ve -- ný kvìt
roz -- kve -- tlá.

}

accompaniment =\chords {
        f1   c2 f1   g2-7 
        c1  g1-min g2-min bes2
	f2 c2-7 f2 r2 bes1
	f2 d2-7 g2-min f4 g4-min f2 r4 f4
	bes1 f1 g2-min f4 c4-7 f2		
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
        \midi  { }
        \paper { linewidth = 18.0\cm; }
}



