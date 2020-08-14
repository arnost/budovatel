\version "2.20.0"
\header {
        title = "Pochod kosmonautů" 
        composer = "S. Zaslavskij" 
	poet = "J. Aplt" 
}

melody =  \relative c'' { \clef treble
       \time 4/4  \key f \major 
c8. b16 c8 d c4 r | a8. gis16 a8 bes a c, f a | c4. d8 c4 f, |
f e r2 | d'8. cis16 d8 e d4 r | bes8. a16 bes8 c bes c, e g | 
c4. d8 c4 g | bes a r r8 a | bes4. a8 a4 g | f2 r4 r8 a |
d4 c g bes | a2. r4 | c8 bes bes c g2 | a8 f f a c4. c8 | c4 bes d c |
f,2 r4 f | bes2. c4 | d bes2 es4 | d4 bes  c8  (   bes ) c4 | f,2 r4 g
| c2. d4 | es4 c2 d4 | es es8  (  d ) c4 c8  (   bes )  | a2. d,4 | g a
bes r8 f |  bes4 c d e | c4 a bes8  (  a )  g4 | c2 r4 f, | bes c d e |
f d bes g | c2 c | f,2. r4 | 
}

text = \lyricmode  {
Vzhů -- ru teď a vpřed ram -- pa už je při -- pra -- ve -- na! Vos --
tok už se chvě -- je. Vzhů -- ru teď a vpřed! A» jsi ho -- den své --
ho jmé -- na, lid ti ú -- spěch pře -- je! To ko -- smo -- nau -- ti
jsou!
A ža -- sne o -- ko -- lí, ko -- smo -- nau -- ti jdou moc -- ná or
-- lí kří -- dla, zra -- ky so -- ko -- lí! A výš -- ka vo -- lá i svě
-- ty vzdá -- le -- né, kdo dál -- ky zdo -- lá pro ště -- stí ze --
mě své? Jde kos -- mo  -- naut a vše -- chny hvě -- zdy mléč -- né drá
-- hy zná, v~něm zá -- ří vě -- čná sí -- la li -- du ví -- těz -- ná.
}

texti = \lyricmode  {

}



accompaniment =\chordmode {
f1 | f | f | c:7 | g:m | g:m |
c:7 f a:7 d:m
bes2 c:7 f1 g2:m c:7 f1 g2:m7 c:7
f2 s4 f:7 bes2. f4 bes2. es4 bes2 c:7 f2 s4 g4:7
c2.:m g4 c2.:m g4 c1:min a2:7 d4 d:7 | g:m d:7 g:m s8 f:7
bes4 f bes g:m7 f2:6 g4:m7 c4:7 f2 s4 f:7 bes f bes a:7 d2:m
g:m7 f2:6.4 c:7  f1

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
                               \layout { linewidth = 20.0\cm  }
                       }


