\version "2.24.0"
\header {
        title = "Mám chaloupku rozbitou"
        composer = "podle lidové písně „Roztrhaná chalupa“"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major
d8 d cis d | e a, c!4 | c8 c b a | g8[( d']) b4 |
b8 b a g | g fis a4 | c8 c a a | a4 g \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Mám cha -- lou -- pku roz -- bi -- tou, slun -- ce do ní sví -- tí,
měl bych ji dát o -- pra -- vit, si -- ce se mi zří -- tí.
}

accompaniment = \chordmode {
g2 | d:7 | d:7 | g |
g | d:7 | d:7 | d4:7 g |
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
        \midi { \tempo 4=92 }
}
