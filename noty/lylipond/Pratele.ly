\version "2.24.0"
\header {
        title = "Přátelé"
        composer = "Václav Dobiáš"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key d \major \tempo "Vřele" 4=96
a4 d, a'2 | g8 a b d a2 | a4 d, a'2 | g8 a b d a2 |
\repeat volta 2 {
e4 e8 fis g4 fis8 e | d8 e fis2. | e4 e8 fis g4 fis8 e | fis8 e d2 r4 |
}
a'4 d, a'2 | g8 a b d d4 a | a4 d, a'2 | g8 a b d d4 a |
e4 e8 fis g4 fis8 e | d8 e fis2. | e4 e8 fis g4 fis8 e | fis8 e d2 r8 a' |
d4. a8 d8. a16 d8. a16 | d1 \bar "|."
}

text = \lyricmode {
Přá -- te -- lé, na -- še pí -- seň zní, šťa -- stný den už se ro -- ze -- dní.
Bra -- tr -- ství prá -- ce všech ná -- ro -- dů, dá li -- dem mír, dá všem svo -- bo -- du.
Ty a já na -- še pí -- seň zpí -- vá, šťa -- stný den už se ro -- ze -- dní -- vá,
la la la la la la la la la la la la la la la la la la. Ha --
lou! Ha -- lou! Ha -- lou! Ha -- lou!
}

accompaniment = \chordmode {
d1 g2 d fis4:m b:m d2 g fis:m
\repeat volta 2 {
a1:7 d a:7 d
}
d1 g2 d fis4:m b:m fis2:m g d
a1:7 d a:7 d d d
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
