\version "2.24.0"
\header {
        title = "Zapadá slunko"
        poet = "Norbert Zoula"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodovým tempem" 4=100
\repeat volta 2 {
d4 b'8. a16 g4 d | d'4 b8. g16 a4 a8[( b]) | c4 c8. b16 b4 b | a4 g8. a16 b4 r |
}
\repeat volta 2 {
\tuplet 3/2 { c8^\markup \italic "volněji" c d } b8. b16 \tuplet 3/2 { c8 c d } b8. b16 |
}
\alternative {
{ \tuplet 3/2 { c8 c d } b8. b16 \tuplet 3/2 { a8 g a } b4 | }
{ \tuplet 3/2 { c8 c d } b8. b16 \tuplet 3/2 { a8 g a } g4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Za -- pa -- dá slun -- ko svo -- bo -- dy zla -- té __ a lí -- bá mr -- tvé Ko -- mu -- ny ret,
krev bra -- trů vol -- ných, re -- ků ne -- zdol -- ných
pom -- stít nás vo -- lá vra -- hů jich let,
pom -- stít nás vo -- lá vra -- hů jich let.
}

accompaniment = \chordmode {
\repeat volta 2 {
g1 | g2 d:7 | d:7 g | c g |
}
\repeat volta 2 {
d4:7 g d:7 g |
}
\alternative {
{ d4:7 g c g | }
{ d4:7 g c g | }
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
