\version "2.24.0"
\header {
        title = "Strojvůdcova písnička"
        composer = "M. Starokadomskij"
        poet = "A. Vvedenskij, český text O. Bárta"
}

melody = \relative c'' {
        \clef treble
        \time 3/8 \key g \major \tempo "Klidně" 8=152
a4\p b8 | a4 fis8 | g4. | g4. \breathe | a4 b8 |
a4 fis8 | g4. | g4. \breathe | a4 b8 | a4 a8 | a4 b8 |
a4 b8 | d4 r8 | b4 r8 | g4. ~ |
\time 2/4 \tempo "Živě" 4=116
g8 r g\mf g |
\repeat volta 2 {
fis8 fis e e | d4 e8 fis | g4 e8 fis | g4 \breathe g8 g |
fis8 fis e e | d4 e8 fis | g4 e8 fis |
}
\alternative {
{ g4 \breathe g8 g }
{ g4 r8 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
„Spí už li -- šky?“ „Spí, spí.“
„Spí už včel -- ky?“ „Spí, spí.“
„A co dě -- ti v~ce -- lém svě -- tě?“
„Spí, spí, spí.“
„Jen já s~lo -- ko -- mo -- ti -- vou, já ne -- spím, já ne -- spím,
dí -- vám se, jak no -- ční tmou le -- tí dým, le -- tí dým.“
„Jen já dým.“
}

zm = \markup "(zm)"
altAs = \markup \concat { "(A" \raise #0.6 \fontsize #-3 \flat \fontsize #-1 \raise #0.7 "7" ")" }

accompaniment = \chordmode {
a4.:7 \once \override ChordName.text = \markup "D (zm)" d4. e4.:m g4. f4.:7
d4. e4.:m g4. a4:7 b8 a4:7 b8:7 a4:7 b8
a4.:7 f4.:7 d4.:7 g8*7
\repeat volta 2 {
c4:7 \once \override ChordName.text = \zm c4:7
d4:7 \once \override ChordName.text = \altAs d4:7
g4 \once \override ChordName.text = \altAs g4
g2
c4:7 \once \override ChordName.text = \zm c4:7
d4:7 \once \override ChordName.text = \altAs d4:7
g4 \once \override ChordName.text = \altAs g4
}
\alternative {
{ g2 }
{ g4. }
}
}

\score {
        <<
          \new ChordNames {
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
        \midi { \tempo 8=152 }
}
