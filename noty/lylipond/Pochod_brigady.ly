\version "2.24.0"
\header {
        title = "Pochod brigády"
        composer = "Endre Szervánszky"
        poet = "Tibor Méray, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key a \minor \tempo 4=112
\repeat volta 2 {
e8. g16 a4 r2 | c8 a g b a4 r |
e8. g16 a4 c d | e8 d c e d4 r |
e4. d8 c4 b8 c | d8 c a g a4 r |
e8. g16 a4 b c |
}
\alternative {
  { d4 c8. g16 a4 r }
  { \once \override Score.VoltaBracket.text = \markup { \bold "2.3." } d4 c8. g16 a2~ | a4 r r2 | \time 2/4 e'4 g8. b16 | a2~ | a4 r \bar "|." }
}
}

text = \lyricmode {
Do bri -- gád, vši -- chni do bri -- gád.
Nad kaž -- dou z~fa -- brik pra -- por li -- du vlá.
Ú -- si -- lí vte -- řin sta let bu -- de znát.
Lid -- stva rod no -- vý nám prá -- ce dá.
prv -- ním vždy být, prv -- ním vždy být.
}

accompaniment = \chordmode {
\repeat volta 2 {
a1:m a1:m a2.:m d4:m a2:m d2:m
a1:m d2:m a2:m a2:m e4:m f4
}
\alternative {
  { d2:m a2:m }
  { d2:m a2:m a1:m d4:m g4:7 a2 a2 }
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
        \midi { \tempo 4=112 }
}
