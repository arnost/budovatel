\version "2.24.0"
\header {
        title = "Za Gottwalda vpřed!"
        composer = "Radim Drejsl"
        poet = "Miloslav Zachata"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key bes \major \tempo "Slavnostním pochodem" 4=112
\repeat volta 3 {
f4 f bes c | d d c bes | es es d8 c4. | bes2 ~ bes8 r r4 |
f4 f bes c | d d c8 bes4. | es4 es d8 c4. | bes2 ~ bes8 r r4 |
bes4 g r bes | f bes r bes | g a bes c | d4 ~ d8 r r4 d |
f4. es8 d4 c | bes bes a g | f es' d4. c8 | bes4 r r2 |
bes4 g r bes | f bes r bes | g a bes c | d4 ~ d8 r r4 d |
f4. es8 d4 c | bes bes a g |
}
\alternative {
{ f4 es' d c | bes r r2 | R1 | }
{ f4 es' d c | a r r2 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
V~ru -- dém mo -- ři vla -- jek sví -- tí ble -- sky bo -- dá -- ků, __
ze všech set -- nin k~Pra -- ze le -- tí lás -- ka vo -- já -- ků. __
K~po -- ctě své zbra -- ně, ať za -- hřmí sal -- vy děl, __
tou lás -- kou ce -- lé ar -- má -- dy je vrch -- ní ve -- li -- tel.
K~po -- ctě své zbra -- ně, ať za -- hřmí sal -- vy děl, __
tou lás -- kou ce -- lé ar -- má -- dy je vrch -- ní ve -- li -- tel.
\set stanza = "3."
za Gott -- wal -- da vpřed!
}

accompaniment = \chordmode {
\repeat volta 3 {
bes1 bes c2:m f:7 bes1:7
bes1:7 bes:7 c2:m f8 d4.:7 g1:m
es1 bes es d es bes2 bes:dim f1:7 bes
es2. e4:dim bes1 es d es g2.:m es4
}
\alternative {
{ f1:7 bes bes }
{ f1:7 f:7 }
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
        \midi { \tempo 4=112 }
}
