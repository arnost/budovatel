\version "2.24.0"
\header {
        title = "Žádný člověk neuvěří"
        composer = "Z Růžďky u Vsetína, 1. pol. 18. století"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major
\repeat volta 2 {
g8 a b c | b a b g | g'4 fis8 g | d4 e |
c4 b | c c8 b | a4 b | a8[( fis]) g4 |
}
}

text = \lyricmode {
\set stanza = "1."
Žád -- ný člo -- věk ne -- u -- vě -- ří, co mu -- sí sed -- lák vyz -- nat,
co mu -- sí sed -- lák vyz -- nat;
}

textb = \lyricmode {
ve dně mu -- sí na ro -- bo -- tu a v~no -- ci seč -- ku chys -- tat,
a v~no -- ci seč -- ku chys -- tat.
}

accompaniment =\chordmode {
\repeat volta 2 {
g2 g g g4:7 c c e:m7 a2:m d:7 g
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
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=88 }
}
