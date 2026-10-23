\version "2.24.0"
\header {
        title = "Kde je Jan Žižka..."
        composer = "lidová"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key a \major
fis8 fis cis' cis gis2 | a8 gis fis eis fis2 |
fis8 fis cis' cis gis2 | b8 a gis eis fis2\fermata \bar "||"
a4 b cis2\fermata | d4 b cis2\fermata \bar "||"
cis8 cis a\( gis\) gis4 fis | a gis fis2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Kde je Jan Žiž -- ka na ty je -- zou -- ce,
a -- by jim při -- pjal pá -- li -- vý věn -- ce:
už je čas, br -- zy zas,
že bu -- dou mít mni -- ši no -- vý kvas.
}

accompaniment =\chordmode {
fis2:m cis fis1:m
fis2:m cis b4:m cis fis2:m
a1 d2 cis
fis2:m cis4 d b:m cis fis2:m
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
