\version "2.24.0"
\header {
        title = "Když se národ přestal bát své vlády"
        composer = "podle lidové písně „Když jsem já šel tou putimskou branou“"
        poet = "Jindřich Štemberka"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key d \major
fis8. g16 a4 a | fis8 a d cis b a | e8 fis g4 g | e'8 d cis b a g |
\repeat volta 2 {
fis8 a d4 d | cis8 cis b4 r | a8 b cis b a8. g16 | fis8 r r4 r |
}
}

text = \lyricmode {
\set stanza = "1."
Když se ná -- rod pře -- stal bát své vlá -- dy,
tu za -- ča -- ly pras -- kat sta -- ré řá -- dy,
pro -- le -- tá -- ři v~je -- den mžik
sra -- zi -- li se v~pev -- ný šik.
}

accompaniment = \chordmode {
d2. | d2. | a2.:7 | a2.:7 |
\repeat volta 2 {
d2. | g2. | a2.:7 | d2. |
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
        \midi { \tempo 4=104 }
}
