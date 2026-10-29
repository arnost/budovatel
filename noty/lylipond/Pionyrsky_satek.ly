\version "2.24.0"
\header {
        title = "Pionýrský šátek"
        composer = "Alois Šebestík"
        poet = "J. Alda"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \major \tempo "Pochodem" 4=112
\partial 8 a8 |
fis8 e fis g | a4 fis8 d | g8-> a b-> g | e4 r8 e | fis4 a | d8 cis b fis |
\tuplet 3/2 { e8^"zvolnit" fis e } cis'8 b | a4 r8 a^"Refrén" | a8. e16 cis8 e | cis'8 a4. |
d8 cis b4 | a8 fis4. | e4 r8 fis | b8 b gis fis | cis'4 a | fis8 gis cis b | a4 a8 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Na pi -- o -- ný -- rský šá -- tek já py -- šný, hr -- dý jsem.
Vždyť čá -- stí pra -- po -- ru je, za kte -- rým k~slá -- vě jdem.
Ten šá -- te -- ček je ru -- dý, ja -- ko krev dě -- lní -- ků,
jež za svo -- bo -- du te -- kla a za re -- pu -- bli -- ku.
}

accompaniment = \chordmode {
\partial 8 s8
d2 d g a d4 a b2:m e:7 a
a2 a e:7 a8 d4. a2 e:7 a e:7 a4.
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
