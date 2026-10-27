\version "2.24.0"
\header {
        title = "Na barykady"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=112
g4\mf d8 g b4 g | b4 g8 b e4 d |
a4 d8 d d4 c | a4 d8 c b2 |
g4 d8 g b4 g | b4 g8 b e4 d |
a4 d8 d d4 c | a4 d8 c b2 |
\repeat volta 2 {
d4\f b d2 | c4 a c2 |
e4 e e4. e8 | d8 c b c d4 r |
d4 b8. c16 d2 | c4 a8. b16 c2 |
e4 e e4. e8 | d8 c b c d4. b8 |
d4.\> b8 d[( c]) b[( a])\! | g2. r4 |
}
}

text = \lyricmode {
Na ba -- ry -- ka -- dy, lu -- du ro -- bo -- czy,
czer -- wo -- ny sztan -- dar do gó -- ry wznieś,
śmia -- ło do bo -- ju wy -- tęż swe ra -- mię,
bo na cię cze -- ka zwy -- cię -- stwa cześć.
Mło -- ty v~dłoń, kuj -- my broń,
mio -- tnie stal czer -- wo -- ne is -- kry w~dal;
żar is -- kry tej tli w~pier -- si mej,
pow -- stań z~burz, po -- bud -- ka gra -- nam już, po --
bud -- ka gra -- nam już!
}

accompaniment = \chordmode {
g1 g2 \parenthesize c4 g4
d1 d2 g2
g1 g2 \parenthesize c4 g4
d1 d2 g2
\repeat volta 2 {
g1 d1
d1:7 g1
g1 d1
d1:7 g1
d1 g1
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
