\version "2.20.0"
\header {
        title = "Národ muzikantů" 
        composer = "Václav Dobiáš" 
	poet = "František Halas" 
}

melody = \relative c'' { 
\clef treble       
\time 4/4 \key f \major 
\partial 4 
a8 bes | 
\repeat volta 2 { c4 a f d'|
c4 a2 g8 r16 g | c,2 ( c8 ) c c' r16 c | a4 r r a8 bes |
c4 a f d' c a r g8 g g4 f e g | c r r bes8 r16 c |
d4 d r c8 bes | a4 a r f8 g | a4 a g f | g2 ( c8 ) r a r16 bes |
c4 a f d' | c a r g8 r16 g | c,2 r8 c c' r16 c |
a4 r r a8 r16 bes | c4 a f d' | c a r g8 r16 g | c,2 r8 c c' r16 c |
f,4 r r2 |
}
\alternative { { r2 r4 a8 bes }{ r1 }}
}

text = \lyricmode {
Že jsme ná -- rod mu -- zi -- kan -- tů
za -- hra -- je -- me z~ve -- se -- la,
kaž -- dé -- mu z~tìch kal -- ku -- lan -- tů,
co sá -- ze -- jí na dì -- la.
Za -- hra -- jem jim od po -- dla -- hy,
bez hou -- slí u na -- ších vrat,
au -- to -- ma -- ty bez ná -- ma -- hy 
na -- u -- čí je tan -- co -- vat,
au -- to -- ma -- ty bez ná -- ma -- hy 
na -- u -- čí je tan -- co -- vat.
}

accompaniment =\chordmode {
s4 | f2 bes | f2. c4 | c1:7 | f |
f 2 bes | f s4 c | c g:7 c g:7 |
c s2 bes4 | bes2 s4 f | f1 | f2 bes4 d:m |
c2 c8 s8 f4 | f2 bes | f s4 c | c1:7 |
f | f2 bes | f s4 c | c1:7 | f | s2. f4 | s1 |
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
       \midi  { \tempo 4=120 }
       \layout {linewidth = 20.0\cm }
}


