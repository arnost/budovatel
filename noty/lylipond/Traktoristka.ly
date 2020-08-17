\version "2.20.0"
\header {
        title = "Traktoristka" 
        composer = "Častuška" 
	poet = "M. Dušková" 
}

melody = \relative c'' {        
\clef treble
\time 2/4 
\key es \major 
\repeat volta 2 {
bes8 bes bes bes |
bes bes bes g | bes bes bes as | g4 f | 
es2 ~ |  es4  f | bes8 bes bes c |
bes bes bes g | bes c bes as |
g4 f | es4 r | r2 | <c' as>8 <c as> <c as> <bes g>|
<as f> <as f> <as f> <as c> |
<bes g> <as c> <bes g> <as f> |
<g es >4 <f d> | <g  es >2 ( | <as f>4  < bes g> ) |
<c as>8 <c as> <c as> <bes g>|
<as f> <as f> <as f> <as c> |
<bes g> <as c> <bes g> <as f> |
<g es >4 <f d> |
es4 r |
        }
}

text = \lyricmode {
Za -- ťu -- kal mi na o -- kén -- ko, do prá -- ce když rá -- no šel,
to a -- by mi o své lás -- ce ješ -- tě jed -- nou po -- vě -- děl.
To a -- by mi o své lás -- ce ješ -- tě jed -- nou po -- vě -- děl,
to a -- by mi o své lás -- ce ješ -- tě jed -- nou po -- vě -- děl.

}

accompaniment =\chordmode {
es2 es2. as4 es bes:7 es2. bes4:7
es2 es2. as4 es bes2:7 r4 r4 es4:7
as4. es8 f4.:m bes8:7
es4. bes8:7 es4 bes:7 es2 f4:m es:7 
as4. es8 f4.:m bes8:7 es4. bes8:7 es4 bes:7 es4
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


