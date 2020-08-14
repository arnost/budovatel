\version "2.20.0"
\header {
        title = "Ruská lidová partyzánská"
        
}

melody =  \relative c'' { \clef treble         
\time 2/4
\key bes \major
bes4. a8 | g4. f8 | es8. es16 d8 c | f4 f | c'4. bes8 |
a4 f | bes bes | bes ( f ) | <bes f d>4.  < d, f c>8 | <g es >4. <d f>8 |
<c es>8. q16 <bes d>8 <c c> | <a c f>4 q | <es' f c'>4. <bes' f d>8 | <c, f a>4  <f f> | <f bes d> q | q2
}

text = \lyricmode {
V~boj když tá -- hl hr -- di -- na Ča -- pá -- jev, bý -- val
zvy -- klý v~če -- le jít. V~boj když tá -- hl 
hr -- di -- na Ča -- pá -- jev, bý -- val zvy -- klý v~če -- le jít. 
}

accompaniment =\chordmode {
bes2 es c:m f f:7 
f:7 bes bes bes2 es 
c:m f f:7 f:7 bes bes 
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
       \midi  { \tempo 4=170}
       \layout { linewidth = 20.0\cm }
}


