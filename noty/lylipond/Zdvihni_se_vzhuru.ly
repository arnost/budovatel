\version "2.24.0"
\header {
        title = "Zdvihni se vzhůru"
        poet = "Leopold Kochmann"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Rázně" 4=96
r8 d e fis | g4 g | b8 b a g | a4 a |
r8 d, fis g | a4 a | a8 a d c | b4 r |
r8 d, e fis | g4 g | b8 b a g | fis4 e |
r8 c' b a | d4 d, | d8. d16 b'8 a | g4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Zdvih -- ni se vzhů -- ru, u -- tý -- ra -- ný li -- de!
Poz -- ved -- ni tvář svou ve prach šla -- pa -- nou!
Ty, jenž po vě -- ky od -- sou -- zen jsi k~bí -- dě,
ať mar -- ně tvo -- je sl -- zy ne -- ka -- nou!
}

accompaniment = \chordmode {
s2 | g | g | d:7 |
d:7 | d:7 | d:7 | g |
g | g | g | c |
a:m | d:7 | d:7 | g |
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
