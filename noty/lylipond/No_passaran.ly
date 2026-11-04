\version "2.24.0"
\header {
        title = "No passaran"
        subtitle = "Píseň z poemy „Atomový mír“"
        composer = "E. F. Burian"
        poet = "E. F. Burian"
}

melody =  \relative c' {
        \clef treble
        \time 2/2 \key f \major \tempo "Do pochodu" 2=96
\partial 2 c2 |
\repeat volta 4 {
f4 r8 f8 f4 f | f g a f | g r c, r | r c d e |
f e d e | f r g r | c, r r2 | r2 d2 |
g4 r8 g8 g4 g | g a bes g | f r d r | r d e f |
g r g2 | a4 g a b | c r8 c8 c4 c |
}
\alternative {
  \volta 1,2,3 { c4 r c,2 | }
  \volta 4 { c'4 r r2 \bar "|." }
}
}

text = \lyricmode {
No pas -- sa -- ran, ne, mar -- ně ne -- pad’ Mad -- rid,
zví -- tě -- zil za něj slav -- ný Sta -- lin -- grad.
No pas -- sa -- ran, už na -- stal čas se řa -- dit
a o po -- sled -- ní bit -- vu bo -- jo -- vat,
no pas -- sa -- ran. No se.
}

accompaniment = \chordmode {
\partial 2 f2
\repeat volta 4 {
f1 f c c2 g4 c
d1:m d2:m7 g c1 c2 d:7
g1:m g4:m d g2:m d1:m d2:m a4 d:m
g1 g:7 c
}
\alternative {
  \volta 1,2,3 { c1 }
  \volta 4 { c1 }
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(slurMelismaBusy tieMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 2=96 }
}
