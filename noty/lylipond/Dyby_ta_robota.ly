\version "2.24.0"
\header {
        title = "Dyby ta robota"
        composer = "Z Velké"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key bes \major \tempo "Mírně" 4=100
d4 d c | d bes g | g g f | bes c4.( d8) | d2 r4 |
d4 d c | d bes g8[( f]) | g4 a bes8[( a]) | c4 a4.( f8) | f2. \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Dy -- by ta ro -- bo -- ta ro -- bo -- tú ne -- by -- la,
co by mo -- je mi -- lá na ňu ne -- cho -- di -- la.
}

accompaniment =\chordmode {
bes2 d4 g2.:m g2:m f4 bes2. bes2.
bes2 d4 g2.:m g4:m d:m d:m7 f2. f2.
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
