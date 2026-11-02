\version "2.24.0"
\header {
        title = "Jde dál po Uralu Čapajeva voj"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key bes \major \tempo "Pochodem" 4=108
r4 r8
\repeat volta 3 {
f8 | bes4 bes8 a | g4 g8 f | es4 es8 g | c4. bes8 |
a4 f8 g | a8[( f]) g a | bes4 bes8 f | bes4. f8 |
d'4 d8 c | bes4 bes8 a | g4 g8 g | c4. bes8 |
a4 f8 g | a8[( f]) g a | bes4 bes8 f | bes4.
}
}

text = \lyricmode {
Jde dál po U -- ra -- lu Ča -- pa -- je -- va voj,
jak so -- ko -- li rvou se, vždy jdou smě -- le v~boj.
Jde dál po U -- ra -- lu Ča -- pa -- je -- va voj,
jak so -- ko -- li rvou se, vždy jdou smě -- le v~boj.
}

accompaniment = \chordmode {
s4.
\repeat volta 3 {
s8 | bes2 | es2 | c2:m | c2:m |
f2 | f2 | bes2 | bes4. s8 |
bes2 | bes2 | c2:m | c2:m |
f2:7 | f2:7 | bes2 | bes4.
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
