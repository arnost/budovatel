\version "2.24.0"
\header {
        title = "Píseň rudých borců"
        composer = "Jan Urban"
        poet = "S. K. Neumann"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major
\partial 4 d4 |
g d a' d, | b'8 a g2 g4 | a d, b' g | a a d d, |
g d a' d, | b'8 c d2 g,4 | a a b a8[( b]) | a2 g4 g' |
\repeat volta 2 {
b,4 b8. ais16 b4. a8 | b8 g e2 fis4 | g a b8 b d c | b4 b r g |
c g8 g g4 a8 a | b4 b r b | a2-> d-> | g,2.-> \parenthesize r4 |
}
}

text = \lyricmode {
\set stanza = "1."
Hoj, za -- zvoň, kro -- kem že -- lez -- ným,
náš pro -- le -- tář -- ský ši -- ku, ráz!
Hoj, za -- zvoň proud a za -- zvoň rým
tvých bor -- ců, bo -- jov -- ní -- ků, ráz!
Jsme dí -- len květ a prá -- ce hlas,
ať sly -- ší kraj, ať sly -- ší měs -- ta,
že ze že -- lez -- né -- ho jsme tě -- la,
ráz, ráz, ráz, ráz!
}

accompaniment = \chordmode {
\partial 4 s4 |
g2 d2 | g1 | d2 g2 | d1 |
g2 d2 | g1 | d1 | d2 g2 |
\repeat volta 2 {
b1 | e2.:m d4:7 | g2. d4 | g2. g4:7 |
c1 | g1 | a2:7 d2:7 | g1 |
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
