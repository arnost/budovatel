\version "2.24.0"
\header {
        title = "My to vždycky vyhrávali"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Rázně" 4=108
g4 g | d d | d' d | b b | a8 b a g | fis4 g | a r | R2 |
\repeat volta 2 {
a8 a a d | a a fis d | g a b c | d4 d | e e | d8 e d c | b4 a | g r | R2 |
}
}

text = \lyricmode {
\set stanza = "1."
My to vždy -- cky vy -- hrá -- va -- li,
my to za -- se vy -- hra -- jem,
my jsme ru -- dý bol -- še -- vi -- ci,
my jsme ru -- dý bol -- še -- vi -- ci,
za Tu -- sa -- rem ne -- pů -- jdem!
}

accompaniment = \chordmode {
g2 | g2 | g2 | g2 | d2:7 | d2:7 | d2:7 | d2:7 |
\repeat volta 2 {
d2:7 | d2:7 | g2 | g2 | c2 | d2:7 | d2:7 | g2 | g2 |
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
        \midi { \tempo 4=108 }
}
