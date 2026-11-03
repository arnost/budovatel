\version "2.24.0"
\header {
        title = "Sibiřan"
        composer = "Nikolaj Krjukov"
        poet = "Jevgenij Dolmatovskij, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Rychle" 4=132
\partial 4 b8 b |
\repeat volta 3 {
e4 e8 fis g4 fis8 e | fis2. b,8 b | fis'4 fis8 g a([ c]) b a | e4 e2 d8 d |
g4 g8 a b([ e]) d c | b2. c8 b | a4 a8 g fis([ c']) b a | b4 b2 d,8 d |
g4 g8 a b([ e]) d c | b2. c8 b | a4 g8 fis b,4 g'8 fis | e4 b'2 d,4 |
g4 b e4. e8 | d8. c16 b8 b c8. b16 a8 a |
\time 2/4 b8. a16 g8 d |
\time 4/4 g4^"rit." b e g | fis8. e16 d2 d8 d | c4( b8) a g4 b |
}
\alternative {
  { e1~ | e4 r r b,8 b }
  { e'1~ | e8 r r4 r2 \bar "|." }
}
}

text = \lyricmode {
V~boj když má ze Si -- bi -- ře hoch jít,
s~Je -- ni -- se -- jem se lou -- če on sto -- jí,
a -- by moh v~pl -- né sí -- le se bít,
je -- mu dá ze -- mě část sí -- ly svo -- jí.
V~boj když má ze Si -- bi -- ře hoch jít,
s~Je -- ni -- se -- jem se lou -- če on sto -- jí.
Je Si -- biř ze -- mě ú -- rod -- ná,
je mo -- hut -- ná a svo -- bod -- ná.
Kde je -- ště ta -- ko -- vá je šíř?
Mys -- lím stá -- le na Si -- biř.
Na všech
biř!
}

accompaniment = \chordmode {
\partial 4 s4 |
\repeat volta 3 {
e1:m | b1:7 | b1:7 | e2.:m d4:7 |
g1 | g1 | b1:7 | e2.:m d4:7 |
g1 | g1 | b1:7 | e2.:m d4:7 |
g2 c2 | g2 d2:7 |
g2 |
g4 e4:m c2 | g1 | a2:m e4:m b4:7 |
}
\alternative {
  { e1:m | e1:m }
  { e1:m | e1:m }
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
        \midi { \tempo 4=132 }
}
