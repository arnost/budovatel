\version "2.24.0"
\header {
        title = "My jsme proletáři"
        composer = "autoři neznámí"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Mírným tempem, výrazně" 4=80
g8. g16 g8 a | g4 e | a8 a a a | b4 b |
b8. b16 b8 d | c4 a | g8 g g a | f4 e\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
My jsme pro -- le -- tá -- ři, ti -- chý ja -- ko pě -- na,
když ta na -- še bí -- da po -- řád kon -- ce ne -- má.
}

accompaniment = \chordmode {
c2 | c | d:7 | g |
g:7 | a:m | g | g4:7 c |
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
        \midi { \tempo 4=80 }
}
