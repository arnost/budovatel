\version "2.24.0"
\header {
        title = "Imamo Tita"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key c \major \tempo "Volným pochodem" 4=96
\repeat volta 2 {
r8 e e f | g( a) g4 | r8 e e f | g a g4 |
r8 g a g | g4 f | r8 g a a | g f e4 |
}
\repeat volta 2 {
e8 f g4 | e8 f g4 | a2 | a8. a16 a8. a16 |
a4 g ~ | g g8 a | b4 b8 a | g8. g16 g8 a | g f e4 |
}
}

text = \lyricmode {
I -- ma -- mo Ti -- ta, i -- ma -- mo ar -- mi -- ju,
da sa -- vez -- ni -- ka sov -- jet -- sku Ru -- si -- ju.
Na -- ša si, na -- ša si, oj Ist -- ro, Ist -- ro mi -- la,
na -- ša si, na -- ša ćeš na -- rod -- na os -- ta -- ti.
}

accompaniment = \chordmode {
\repeat volta 2 {
c2 c c c c g g c
}
\repeat volta 2 {
c2 c f f c c g g c
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
        \midi { \tempo 4=96 }
}
