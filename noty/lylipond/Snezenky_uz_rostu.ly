\version "2.24.0"
\header {
        title = "Sněženky už rostú"
        composer = "Jiřina Mikulenková"
        poet = "Jiřina Mikulenková"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key e \major \tempo "Mírně rychle" 4=96
b8 e gis fis | e8 b4.\fermata | e8 gis b a | gis8 e4.\fermata |
fis8 gis a gis | a8 fis4.\fermata | e2\fermata | b8 e gis fis | e8 b4.\fermata |
gis'8 gis b a | gis8 e4. | a8 a gis fis | gis8 fis4.\fermata | e2\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Sně -- žen -- ky už ros -- tú, fi -- jal -- ky zas vo -- ňá,
ot -- ví -- ře sa jar -- ní zem.
A -- le nám je tesk -- no, dyť sme sa lú -- či -- li
se sú -- dru -- hem Gott -- wal -- dem.
}

accompaniment =\chordmode {
e2 e e e fis:m b:7 e e e
e2 e fis:m b:7 e
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
