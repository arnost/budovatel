\version "2.24.0"
\header {
        title = "Ivan"
        composer = "K. Konvalinka"
        poet = "K. Kalláb"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key f \major \tempo "Svěže" 4=120
a4 f r | c' a r | g g a | g f r |
c4 f g | a g f | d g a | bes a g |
a4 f r | c' a r | g g a | g f r \bar "|."
}

text = \lyricmode {
I -- van, I -- van, vzbu -- dil ho skři -- van.
Skři -- vá -- nek za -- zpí -- val, I -- vá -- nek za -- zí -- val.
I -- van, I -- van, vzbu -- dil ho skři -- van.
}

accompaniment = \chordmode {
f2. a:m c:7 f
f2. f g:m g:m
f2. a:m c:7 f
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
