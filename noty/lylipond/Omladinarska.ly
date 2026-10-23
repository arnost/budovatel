\version "2.24.0"
\header {
        title = "Omladinářská"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Pochodem" 4=108
\partial 4 g8. g16 |
c4 c | g g | \tuplet 3/2 { e8[( g e]) } c4 ~ | c2 |
r4 c'8 c | b4 g | d' d | g,2 |
r4 g8 g | d'4. e8 | d4 g, | d' c | r4 g8 g | d'4. e8 |
d4 g, | d' c | r4 g8 g | c4 c | d d |
e4 r | e8 e f d | c4 b | c r | r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Vzhů -- ru, bra -- tři, spoj -- me hla -- sy __
nad bab -- ský -- mi ná -- ře -- ky,
ne -- smí nás již zra -- dit lhá -- ři
a pře -- káž -- ky sta -- vět tmá -- ři,
ne -- za -- stra -- ší nás jich vzhled,
o -- mla -- di -- na půj -- de vpřed!
}

accompaniment = \chordmode {
\partial 4 s4 |
c2 | c2 | c2 | c2 |
c2 | g2 | g2 | g2 |
g2 | g2 | g2 | c2 | c2 | g2 |
g2 | c2 | c2 | c2 | g2 |
c2 | c4 f4 | f4 g4:7 | c2 | c4
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
        \midi { \tempo 4=108 }
}
