\version "2.24.0"
\header {
        title = "Vzpomínka z fronty"
        composer = "Matvej Blantěr"
        poet = "Jevgenij Dolmatovskij, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key e \minor \tempo "Volně" 4=96
\partial 4 b4 | e2 c'4 | b2 e,4 | dis2 c'4 | b2 a4 | g2 b4 | d4( e) c | b2.~ | b4 r b |
\repeat volta 2 {
e2 b4 | d4( c) b | e2 c4 | a2 fis4 | b2 c4 | b2 a4 |
}
\alternative {
  { e2.~ | e4 r b' }
  { e2.~ | e4 r r \bar "|." }
}
}

text = \lyricmode {
My po -- cho -- dem šli v~ši -- rou dál,
tam v~mí -- sta vzdá -- le -- ná.
Tvůj poz -- drav na -- po -- sled mi vlál,
má dív -- ko mi -- le -- ná.
Tvůj ná.
}

accompaniment = \chordmode {
\partial 4 s4 | e2.:m | e2.:m | b2.:7 | b2.:7 | e2.:m | d2.:7 | g2. | g2. |
\repeat volta 2 {
e2.:7 | e2.:7 | a2.:m | a2.:m | b2.:7 | b2.:7 |
}
\alternative {
  { e2.:m | e2.:m }
  { e2.:m | e2.:m }
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
        \midi { \tempo 4=96 }
}
