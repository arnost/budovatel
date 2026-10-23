\version "2.24.0"
\header {
        title = "Příroda nám káže"
        poet = "J. B. Pecka"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=108
\repeat volta 2 {
g8. a16 b8 c d4 d | a8 c b a g4 r |
}
e'8. e16 e8 e e4 d | c8. b16 c8 e d4 r |
g,8. a16 b8 c d4 d | a8. c16 b8 a g4 r |
\repeat volta 2 {
g4 b d r8 d | e e c e d4 r |
g,8. g16 g8 b d4 d | a8 c b a g4 r |
}
}

text = \lyricmode {
\set stanza = "1."
Pří -- ro -- da nám ká -- že ne -- tr -- pě -- ti hlad,
Pěj -- me pí -- seň bí -- dy vra -- hům na post -- rach,
ať se z~pan -- ství kli -- dí, než -- li kles -- nou v~prach.
Dál, dál, dál! Za hes -- lem po -- kro -- ku:
ne -- chce -- me víc pá -- nů, a -- ni o -- tro -- ků!
}

textb = \lyricmode {
pro -- čež vzhů -- ru pa -- že, slav -- me je -- ho pád!
}

accompaniment = \chordmode {
\repeat volta 2 {
g1 | d2:7 g |
}
c1 | a2:m d:7 |
g1 | d2:7 g |
\repeat volta 2 {
g1 | c2 d:7 |
g1 | d2:7 g |
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
          \new Lyrics \lyricsto "one" \textb
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
