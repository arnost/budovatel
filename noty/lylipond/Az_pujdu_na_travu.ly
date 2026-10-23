\version "2.24.0"
\header {
        title = "Až půjdu na trávu"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key d \major \tempo "Svižně" 4=132
a4 b a | fis2 a4 | e2. | a4 cis b | a2 g4 | fis2. |
\repeat volta 2 {
a4 b cis | d2 fis4 | e2. | d4 cis b | a2 g4 | fis2. |
}
}

text = \lyricmode {
\set stanza = "1."
Až pů -- jdu na trá -- vu, u -- sed -- nu na ká -- men,
u -- vá -- žu si pen -- tli čer -- ve -- nou jak pla -- men.
}

accompaniment = \chordmode {
d2. | d | a:7 | a:7 | a:7 | d |
\repeat volta 2 {
d2. | d | g | g | a:7 | d |
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
        \midi { \tempo 4=132 }
}
