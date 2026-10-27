\version "2.24.0"
\header {
        title = "Titovo kolo"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key f \major \tempo "Mírně, při dalších slokách zrychlovat" 4=100
\repeat volta 2 {
a4 c | c4. a8 | d4 c8[( a]) | \acciaccatura c8 bes4. a8 |
g[( a]) bes4 | a g8[( f]) | g4 g8 r |
}
}

text = \lyricmode {
Ši -- ri ko -- lo, joj,
\set ignoreMelismata = ##t ši -- ri \unset ignoreMelismata ko -- lo,
ko -- za -- rač -- ka lo -- lo.
}

accompaniment = \chordmode {
\repeat volta 2 {
f2 f f c c f c
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=100 }
}
