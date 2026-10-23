\version "2.24.0"
\header {
        title = "Kto za pravdu horí"
        composer = "slovenský nápěv"
        poet = "Karol Kuzmány"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Vážně a se zápalem" 4=76
c4\mf g | e8 f a4 | g2 | f8 e f a | g4 r |
c4 g | e8 f a4 | g2 | f8 e f a | g4 r |
\repeat volta 2 {
g8 a b c | d4 g, | c8 b c e | d2 |
e8 d c b | a4 f' | e8 d c b | c4 r |
}
}

text = \lyricmode {
\set stanza = "1."
Kto za prav -- du ho -- rí v~svä -- tej o -- be -- ti,
kto za ľud -- stva prá -- vo ži -- vot po -- svä -- tí,
kto nad kriv -- dou bied -- nych sl -- zu vy -- ro -- ní:
to -- mu mo -- ja pie -- seň slá -- vu za -- zvo -- ní!
}

accompaniment = \chordmode {
c2 f g d:m g
c2 f g d:m g
\repeat volta 2 {
g2 g c g
e2:7 a4:m d:m g2 c
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
        \midi { \tempo 4=76 }
}
