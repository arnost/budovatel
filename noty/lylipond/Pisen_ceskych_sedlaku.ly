\version "2.24.0"
\header {
        title = "Píseň českých sedláků"
        composer = "Z jižních Čech před r. 1680"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major
\repeat volta 2 {
c8 c d c c bes bes a | a g g f f4 r |
}
a8 g a f a bes c4 | a8 g a f a bes c4 |
c8 c d c c bes bes a | a g g f f4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Žád -- ný ne -- ví, co je nou -- ze, kdo ji nez -- ku -- sil.
Dar -- mo pá -- nu dě -- la -- ti, těž -- ké prá -- ce ko -- na -- ti,
co nej -- ví -- ce vy -- mej -- šle -- jí, mu -- sí se stá -- ti.
}

textb = \lyricmode {
Ne -- šel bych já na ro -- bo -- tu, kdy -- bych ne -- mu -- sil.
}

accompaniment =\chordmode {
\repeat volta 2 {
f1 c2 f
}
f1 f1
f1 c2 f
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=96 }
}
