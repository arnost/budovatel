\version "2.24.0"
\header {
        title = "Septemvrijci"
        composer = "bulharská revoluční píseň"
        poet = "český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key e \minor \tempo "Klidně" 4=80
\partial 8 b8 |
e4 e8. fis16 g4 a8. a16 | b4( g4) e4 r8 e8 |
a4 a8. c16 e4 d8. c16 | b2. r8 b8 |
c4 c8. b16 a4 b8. c16 | b4( g4) e4 r8 g8 |
fis4 fis8. fis16 b4 g8. fis16 | e2. r8 \bar "|."
}

text = \lyricmode {
Již slun -- ko se k~Du -- na -- ji sklá -- ní
a pás hor -- stva spá -- ti se zdá,
slyš, Bo -- te -- va vý -- zva jde plá -- ní
a vzpou -- ry teď žár zno -- vu plá.
}

accompaniment = \chordmode {
\partial 8 s8
e1:m e1:m a1:m e1:m a1:m e1:m b1:7 e2.:m s8
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
