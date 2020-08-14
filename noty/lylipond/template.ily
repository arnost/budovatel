\version "2.20.0"
\header {
        title = ""
        composer = ""
	     poet = ""
}

melody =  \relative c' { \clef treble         
\time 2/4
\key a \major
}

text = \lyricmode {

}

accompaniment =\chordmode {

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


