\version "2.20.0"
\header {
        title = "Ta družstevní pračka"
        composer = "G. Třísková"
	     poet = ""
}

melody =  \relative c'' { \clef treble         
\time 3/4
\key g \major
\repeat volta 2 { g4 g g | a g a | b b b | g2 b4 | a a a | fis2 c'4 } 
\alternative{{b b b | g2 r4 } 
{b b a | g2 r4} 
}}

text = \lyricmode {
 Ta -- druž -- ste -- vní pra -- čka do -- bře pe -- re, aj do -- bře pe -- re, aj do -- bře pe -- re, ne -- do -- že -- re
}
texti = \lyricmode {
 Ta žá -- dné prá -- dél -- ko ne -- do -- že -- re, aj ne -- do -- že -- re, aj 
}

accompaniment =\chordmode {
g2. | d | g | g | d | d:7 | g | g | g2 d4 | g2 
		}

\score {
       <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \texti
       >>
       \midi  { \tempo 4=170}
       \layout { linewidth = 20.0\cm }
}


