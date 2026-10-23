\version "2.24.0"
\header {
        title = "Píseň o Stalinovi"
        composer = "Václav Dobiáš"
        poet = "K. Galczynski, překlad Jan Pilař"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Radostně" 4=100
f4.( c'8) c4 f,8 g | a4 g a f | d4.( a'8) a4 d,8 e |
f4 e f d | g d' a4.( c8) | c bes a g f4 g | a8 a d2 a4 | c2.\fermata c8 a |
g4 c8[( a]) g4 d | a' f2 c8 d | f4. e8 a4 g | f8.([ a16]) c4. r8 c a |
g4 c8[( a]) g4 d | f d2 c8 d | e4. e8 dis4 e | f e r c8 d! |
e4. e8 dis4 e | c' a2( g4) |
f4.( c'8) c4 f,8 g | a4 g a8 g a f | d4.( a'8) a4 d,8 e | f4 e f8 e f d |
g4 d' a4.( c8) | c bes a g f4 g | a8 a d2 a4 | c2.\fermata c8 a |
g4 c8[( a]) g4 d | a' f2 c8 d | f4. e8 a4 g | f8.([ a16]) c4. r8 c a |
g4 c8[( a]) g4 d | f d2 c8 d | e4. e8 dis4 e | f e r c8 d! |
e4. e8 dis4 e | c' a2( g4) |
f4.( c'8) c4 f,8 g | a4 g a f | d4.( a'8) a4 d,8 e | f4 e f d |
g4 d' a4.( c8) | c bes a g f4 g | a8 a d2 a4 | d1\fermata \bar "|."
}

text = \lyricmode {
Sta -- lin k~mí -- ru lid -- stvo ří -- dí, Sta -- lin vol -- nost,
Sta -- lin ra -- dost, Sta -- lin vzor pro -- le -- tá -- řů tří -- dy, je -- mu slá -- va, ej!
Je -- mu ru -- dé vlaj -- ky vla -- jí, je -- mu pís -- ně po -- sí -- la -- jí:
slav -- ná Mo -- skva, Pra -- ha čes -- ká i Var -- ša -- va, Mo -- skva, Pra -- ha, i Var -- ša -- va, Pra -- ha, Mo -- skva. __
Sta -- lin, je -- mu všich -- ni dě -- ku -- je -- me, Sta -- lin, za ví -- těz -- ství Sta -- lin -- gra -- du,
na -- vždy s~ním, s~Mo -- skvou, bra -- trem jde -- me, už ne sa -- mi, ej!
Pro -- to slav -- ně zně -- jí sbo -- ry, všu -- de kde je štěs -- tím prá -- ce, i tam kde je pod o -- ko -- vy.
Sbo -- ry zně -- jí: Sta -- lin s~ná -- mi! Sbo -- ry zně -- jí: Sta -- lin s~ná -- mi! __
Sta -- lin k~mí -- ru lid -- stvo ří -- dí, Sta -- lin vol -- nost, Sta -- lin ra -- dost,
Sta -- lin vzor pro -- le -- tá -- řů tří -- dy, je -- mu slá -- va, ej!
}

accompaniment = \chordmode {
f1 f d:m d:m
g2:m d:m7 g1:m d:m c c2 bes f1 g2:m7 c:7 f1 c2 bes d1:m a:m a:m a:m a2.:m c4:7
f1 f d:m d:m
g2:m d:m7 g1:m d:m c c2 bes f1 g2:m7 c:7 f1 c2:7 bes d1:m a:m a:m a:m a2.:m c4:7
f1 f d:m d:m
g2:m d:m7 g1:m d2.:m a4:m d1
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
        <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=100 }
}
