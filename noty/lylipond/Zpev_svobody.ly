\version "2.20.0"
\header {
        title = "Zpěv Svobody" 
        composer = "J. Seidel" 
}
melody =  \relative c' {
        \time 4/4 \key f \major 
c4 c f2 | g8 a bes g a4 f | a8 bes c d c4 a |
g2. r4 | d4 d g2 | g8 a bes c d4 f |
c8 d c bes a4 g | f2 r4 f8 f |  f'2 ( f8 )  d bes d |
c4 a2. | g8 d' c bes a4 b | c2 r4 f,8 f |
f'2 (  f8 )  d bes d | c4 a2.  | g8 d' c bes a4 g | f2. r4 |
        \bar "|." 
}

text = \lyricmode {
To jsem já, já svo -- bo -- da mla -- dá v~čer -- ve -- ný květ roz --
kve -- tlá,
to jsem já z~dě -- su dý -- ma -- vých měst,
z~dě -- su bí -- dy vy -- ro -- stlá.
To jsem já, svo -- bo -- da mla -- dá, v~čer -- ve -- ný květ
roz -- kve -- tlá
To jsem já, svo -- bo -- da mla -- dá, v~čer -- ve -- ný květ
roz -- kve -- tlá.

}

accompaniment =\chordmode {
        f1   c2 f1   g2:7 
        c1  g1:m g2:m bes2
	f2 c2:7 f2 s2 bes1
	f2 d2:7 g2:m f4 g4:m f2 s4 f4
	bes1 f1 g2:m f4 c4:7 f2		
		}

\score {
       <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
       >>
       \midi  { \tempo 4=160}
       \layout { linewidth = 20.0\cm }
}


