\version "2.24.0"
\header {
        title = "Ti račičtí páni"
        composer = "lidová"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major
\repeat volta 2 {
a8 a a a | d4 a | fis8 fis fis fis | a4 fis |
}
\repeat volta 2 {
\acciaccatura g8 b8 b b g | \acciaccatura gis8 a8 a a fis |
}
\alternative {
{ e8 fis g a | b4 a | }
{ e8 fis g a | g4 fis | }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ti ra -- či -- čtí pá -- ni, to jsou gro -- bi -- á -- ni,
o -- ni faj -- rumt ne -- dá -- va -- jí,
až zvo -- ní kle -- ká -- ní,
až zvo -- ní kle -- ká -- ní.
}

accompaniment =\chordmode {
\repeat volta 2 {
d2 d d d
}
\repeat volta 2 {
\grace s8 g2 \grace s8 d2
}
\alternative {
{ a2:7 a4:7 d }
{ a2:7 a4:7 d }
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
        \midi { \tempo 4=92 }
}
