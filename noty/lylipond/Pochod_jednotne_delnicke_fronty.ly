\version "2.20.0"
\header {
        title = "Pochod jednotné dělnické fronty" 
        composer = "František Kubr" 
	poet = "Vít Nejedlý" 
}

melody =  \relative c'' {        
\time 4/4 \key bes \major 
\partial 4 
bes4 | a g bes8 bes a g | es4 es r es |
d g8 a bes4 a8 g | fis4 r r a | g a bes8 bes a g |
d'2 a4 a | d4. g,8 d8. d16 es8 d | g4 r r f |
bes bes a bes | c a8. g16 f4 r | g4 g8 g es'4 es |
c c d r | a c8 bes g4 a | bes4  d, d es | f8 f r4 g g | a a bes r |
        \bar "|." 
}

text = \lyricmode {
Chcem vzbu -- dit stro --  je, kte -- ré dří -- mou. chcem zap -- nout
je na veè -- ný spěch, a s~ni -- mi v~tem -- pu prá -- ce zpí -- vat
děl -- ní -- ci kon -- ti -- nen -- tů všech!
Hoj, dru -- zi mo -- ji, na -- stu -- pu -- jem,
za na -- še prá -- va zní náš zpěv, my kaž -- dou o -- běť, při -- ne
-- se -- me, ži -- vot ště -- stí, svo -- ji krev.

}

accompaniment =\chordmode {
g4:m | g1:m | c1:m | g1:m d1:7 |
g1:m | d:7 g2:m d2:7 | g4:m s s f4:7
bes1 f:7 c:m f2 bes2 f2:7 es2 bes1. es2 f2:7 bes4 s
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
