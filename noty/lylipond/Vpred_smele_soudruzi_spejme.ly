\version "2.20.0"
\header {
        title = "Vpřed směle soudruzi spějme" 
        composer = "Revoluční tradicionál" 
	poet = " L. P. Radin" 
}


PrvniHlas =  {
g4 fis8. g16 a4 g8 fis | g2 e |
g4 fis8. g16 a4 b8. b16 | c2. r4 |
}

DruhyHlas={
e,4 dis8. e16 f4 e8 dis | e2 c |
e4 dis8. e16 f4 f8. f16 | e2. r4 |
}

DruhyHlasRep={
f,4 f8. g16 a4 g8. f16 | e4 (  c' ) c2 |
d4 b8. a16 g4 f8. d16 | c2 r4

}

PrvniHlasRep =  {
a4 a8. b16 c4 b8. a16 | g4 ( e' ) e2 |
f4 d8. c16 b4 a8. b16 | c2 s |
}

melody =  \relative c'' {        
\time 4/4 \key c \major
<<
\PrvniHlas
\DruhyHlas
>>
\repeat volta 2{
<<
\PrvniHlasRep
\DruhyHlasRep
>>
}

        \bar "|." 
}

text = \lyricmode {
Vpřed smě -- le sou -- dru -- zi spě -- jme,
ro -- zní -- til boj sí -- lu v~nás,
svo -- bo -- dou ce -- stou se de -- jme,
v~boj za ni pù -- jde -- me v~ráz.
}

accompaniment =\chordmode {
c2 f4 c | c1 |
c2 g:7 | c1
f c g:7 c2 s4
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
        \midi  { \tempo 4 =120 }
        \layout { linewidth = 18.0\cm  }
}
