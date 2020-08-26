\version "2.20.0"
\header {
        title = "Hej stalinovci" 
        composer = "Vladimír Sommer" 
	poet = "Miloslav Zachata" 
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f\major 
\repeat volta 2 {
d8 d d4 ( d8 ) e f g | a4 f e d |
cis e cis a | d f e r | d8 d d4 ( d8 ) e f g |
a4 f e d | cis e cis a | d r r2 |
\key d \major
a2 d4 a' | a g r a8 g | fis4 d cis e | d4 r r2 |
a2 d4 a' | a g r a8 g | fis4 d cis d | e4 r r2 |
g2. fis8 g | fis4 g a e |fis d'2 cis8 d |
cis4 d e b | c e2 c8 d | e4 d c b |
a c2 a4 | g bes a g | a,2 d4 a' | a g r a8 g |
fis4 d cis e | }
\alternative {{d4 r r2 | r1 }{d4 e f g | a1}}
        \bar "|." 
}

text = \lyricmode {
Kaž -- dý z~nás mu -- sí být u své prá -- ce,
ni -- kdo ne -- smí le -- ni -- vět, pro -- to vás
vo -- lá -- me: Pojď -- te rvát se, dě -- lat lep -- ší
svět!

Hej Sta -- li -- nov -- ci do ra -- cho -- ty zve -- se -- la,
v~prá -- ci se chce -- me do -- stat ze -- mi do če -- la.
Nás spou -- sta prá -- ce če -- ká, hej nás a -- le ne -- po -- le --
ká, po svém žít a dě -- lat chce -- me a my to do -- ká -- že --
me. Hej, Sta -- li -- nov -- ci, do ra -- cho -- ty zve -- se 
-- la.  la, jen zve -- se -- la.
}
text_ii = \lyrics {
My o všech svě -- to -- vých plá -- nech ví -- me,
jimž by vál -- ka při -- šla vhod. My bez báz -- ně na ně od -- po --
ví -- me pra -- cí pro ži -- vot. 
}

accompaniment =\chordmode {
\repeat volta 2 {
d2:m g:m d:m g:m
a1:7 d2:m a2:7 d2:m g:m
d:m g:m a1:7 d |
d1 g d2 a:7 d1
d1 g2 s4 g:m b1:m a:7 
e:m7 a:7 b:m
b2:m e c1 a:m f es2 a:7 d1 g d2 a:7 }
\alternative {{d4:m s2. s1 }{ d4 c bes g d1}}
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
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

