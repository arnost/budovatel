\version "2.24.0"
\header {
        title = "Píseň továrny"
        composer = "Alois Šebestík"
        poet = "O. Bárta"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Radostně" 4=104
g8 e f4 | g8 f e4 | a8 f a4 | g e8 r |
c'8 b a4 | g f8 e | f e d4 | e g8 r |
c8 b a4 | g f8 e | f e d4 | e c8 r \bar "|."
}

text = \lyricmode {
Ře -- kni mi, ře -- kni mi, ma -- min -- ko mo -- je,
o čem to zpí -- va -- jí v~to -- vá -- rnách stro -- je,
o čem to zpí -- va -- jí v~to -- vá -- rnách stro -- je?
}

accompaniment = \chordmode {
c2 c f c
a2:m g4 c g2:7 c
c2 c g:7 c
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
        \midi { \tempo 4=104 }
}
