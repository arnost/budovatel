\version "2.24.0"
\header {
        title = "Lakomec"
        composer = "Jan Urban"
        poet = "Jan Hostáň"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Žertovně" 4=100
b8 b a a | g4 d' | e,8 g fis a | g4 r |
c8 c b b | a4 e' | g,8 g b a | g4 r |
a8 a b a | g4 e | fis8 g a d, | b'4 r |
\repeat volta 2 {
g4 d' | d8 c b a | g g a d, |
}
\alternative {
{ b'4 r }
{ g4 r }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Kou -- pil špa -- ček tře -- šně, sta -- věl pro ně krám,
a že do -- bré by -- ly, sně -- dl vše -- cky sám.
Om -- lou -- val se sta -- ré, sot -- va do -- mů vlít:
„Víš, já chci ty pec -- ky chu -- dým roz -- dě -- lit!“ lit!“
}

accompaniment = \chordmode {
g4 d4:7 | g2 | c4 d4:7 | g2 |
c4 e4:7 | a4:m d4:7 | g4 d4:7 | g2 |
a2:7 | a2:7 | d2:7 | g2 |
\repeat volta 2 {
a2 | d2:7 | g4 d4:7 |
}
\alternative {
{ g2 }
{ g2 }
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
        \midi { \tempo 4=100 }
}
