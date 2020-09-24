\version "2.20.0"
\header {
        title = "Mládí" 
        composer = "A. Honneger" 
	poet = "P. V. Couturier" 
}

refren =  {
e4. g4. | c4. (  c4 ) e,8 | f4 (  e8 ) f4 (  a8 ) | g4. d4 d8 |
e4. d4 c8 | a'4. a4. | g2. ~ |  g2. | g4. c,4. | f4. g4 a8 |
bes4. bes4. | a4. f4. | a4. g4 (  fis8 ) | g4. a4 (  b8 ) | c4. c4. |
c4 (  b8 ) a4 (  g8 ) | c4. b4 a8 | g4. f4. | e4. f4. | g2. |
a4. b4 c8 | e,4. g4 (  f8 ) | e4. d4. | c2. 
}

melody =  \relative c'' {        
\time 6/8 \key c \major
r4 g8 e4 d8 | c4 d8 e4 d8 | g4 g8 e4 d8|
c4 d8 e4 e8 | c2. | r4 g'8 e4 d8 | c4 d8 e4 d8 |
g4 e8 g4 a8 | b4 b8 fis4 g8 | e4. (  e4. ) | a8 a a g4 g8 |
a4 a8 g4. | g8 a b c4 c8 | c4 e8 d4 c8 | g2. | g4. (  g4 ) r8 |
\refren 
        \bar "|." 
}


text = \lyricmode {
Dnes vše -- chno mlá -- dí s~ná -- mi jde, jež vzne -- še -- ný si na
-- šlo cíl: chcem a -- by člo -- věk lé -- pe žil, své sí -- ly k~to
-- mu sje -- dnoť -- me 
Jdem zni -- čit bí -- du bo -- jem svým, ú -- směv zas dá -- me ne --
šťa -- stným a pí -- seò.

K~cí -- li blíž se mlá -- dež bi -- je. Zří před se -- bou no -- vý
den. Ná -- rod v~prá -- ci tam šťa -- stně ži -- je, ka -- ždý člo --
věk ve -- se -- lý je.
Před se -- bou má -- me no -- vý den,
my dá -- me lá -- sku ra -- dost všem.
}

accompaniment =\chordmode {
c1. g2.:7 c4. g4.:7 c2. s4 g2:7 | c1.
b2.:7 e2.:m d4.:m g4.:7
d4.:m g4.:7 c2. d2.:7 g1.:7 
c4. g4.:7 a2.:m d2.:m g2.:7 c2.
f2. c2. g2.:7 c2. f2. c2.:7 f2. 
g:7 c d:7 g c g:7 c4. g4.:7 c2.
f c g:7 c
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
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}
