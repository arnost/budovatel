\version "2.24.0"
\header {
        title = "Vězeňská"
        composer = "podle lidové písně „Alou, páni muzikanti“"
        poet = "Norbert Zoula"
}

melody =  \relative c' {
        \clef treble
        \key f \major
\time 3/4 f8 g a4 a | \bar "||" \time 2/4 a8 g g f | \bar "||" \time 3/4 a8 bes c4 c | \bar "||"
\time 2/4 c8 bes bes a | a a g a | bes a g r | c8. c16 c8 r |
\repeat volta 2 {
\time 3/4 c8 bes a4 c | \bar "||" \time 2/4 d8 c bes a | \bar "||" \time 3/4 bes8 a g4 d' | \bar "||"
\time 2/4 c8 bes a g | \bar "||" \time 3/4 f8 g a4 a | g8 g f r r4 |
}
}

text = \lyricmode {
\set stanza = "1."
Za -- pěj -- me si pí -- seň, bra -- tři, jak to vol -- ným mu -- žům pa -- tří,
tře -- ba v~ža -- lá -- ři by -- li (spou -- ta -- ný).
V~muž -- né pís -- ni, v~muž -- ném slo -- vě ne -- má ža -- lář va -- dit to -- bě,
i kdy -- by tě trá -- pi -- li!
}

accompaniment = \chordmode {
f2. | c4:7 f | f2. |
c2:7 | f | c:7 | c:7 |
\repeat volta 2 {
f2. | bes2 | c2.:7 |
c2:7 | f2. | c4:7 f2 |
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
