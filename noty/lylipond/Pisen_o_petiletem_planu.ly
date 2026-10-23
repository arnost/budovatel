\version "2.24.0"
\header {
        title = "Píseň o pětiletém plánu"
        composer = "Alois Hába"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \major \tempo "Radostně" 4=120
g4 g8 d g4 a | d g, r g | c g c e | d2. g,4 |
c a b c | d g, r e' | d c b a8[( d]) | g,2. r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
O pě -- ti -- le -- tém plá -- nu, když stru -- na za -- zvo -- ní,
tu šu -- mí na -- še srd -- ce jak kvít -- ky ja -- blo -- ní.
}

accompaniment = \chordmode {
g2. d4 | g1 | c | g |
d1 | g2. c4 | d1 | g |
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
        \midi { \tempo 4=120 }
}
