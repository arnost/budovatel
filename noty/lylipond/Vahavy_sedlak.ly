\version "2.20.0"
\header {
        title = "Váhavý sedlák"
        composer = "Jiří Válek"
	poet = "Antonín Lacina"
}

melody =  \relative c' {        
\clef treble
\time 2/4
\key f \major
c4 f | g bes | <a f>8 <bes g> <c a>4 | 
\time 3/4 <bes d>8 <a c> <bes g>4 <g e> |
<f a><a c> r | \time 2/4 c,4 f | g bes | <a f>8 <bes g> <c a>4 | 
\time 3/4 <bes d>8 <a c> <bes g>4 <g e> | <g e> f r
<bes d,>8 <c f,> <bes d>4 <c e>8 ( <d bes> ) |
<d bes>4 <c a>8 ( <b gis> ) <c a>4 |
g8 <a d,> <bes g>4 <c e,> | <a cis,> <a cis,> r |
\time 2/4 c,4 f | g bes | <a fis>8 <bes g> <c a>4 | 
\time 3/4 <bes d>8 <a c> <bes g>4 <g e> | <g e> f r
        \bar "|."
}

text = \lyricmode {
Slun -- ce do něj pra -- ži -- lo, 
skří -- pa -- la mu ko -- sa,
od rá -- na se lo -- po -- tí, 
za -- čal by -- la ro -- sa.
Než po -- líč -- ko po -- ko -- sí,
ač je to -- ho kou -- sek,
zá -- da bu -- dou zlo -- me -- na,
po -- pli -- va -- ný brou -- sek.

}

accompaniment =\chordmode {
f2 c:5.6 f g2:m c4:7
f2. f2 c:5.6 f g2:m c4:7 f2.
bes2. f g2:m e4:3-.5- a2.:7
f2 c:5.6 d:7 g2:m c4:7 f2.
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
       \midi  { \tempo 4=180}
       \layout { linewidth = 20.0\cm }
}


