\version "2.24.0"
\header {
        title = "Na Královej holi"
        composer = "slovenská lidová"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key f \major \tempo "Zvolna" 4=66
f8 c4 a8 | bes c a4 | f'8 c4 a8 | bes4 c | a r |
\repeat volta 2 {
bes8 a g4 | g c, | c'2 | bes8 a f4 | g a | f2 |
}
}

text = \lyricmode {
\set stanza = "1."
Na Krá -- ľo -- vej ho -- li jas -- ná va -- tra svie -- ti,
o -- ko -- lo tej va -- try dva -- násť hod -- ných de -- tí.
}

accompaniment =\chordmode {
f2 c4 f f2 g4:m c f2
\repeat volta 2 {
g2:m c c g:m c f
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
        \midi { \tempo 4=66 }
}
