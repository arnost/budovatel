\version "2.24.0"
\header {
        title = "U studánky"
        composer = "Anatolij Novikov"
        poet = "Sergej Alymov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \major \tempo "Vesele" 4=126
r2 r4 e8 f | g8 g g g a g f e | d2. d8 e | f8 f f f g f e d |
c2. e8 f | g8 g g g a g f e | d2. d8 e | f8 f f f g f e d |
c2~ c8 r b c | d4 d d c8 b | a8 b c d e4 e8 c' |
b4 gis a g8 f | e2~ e8 r d e | f4 f f e8 d |
c8 d e f g4 g8 e' | d8 d c c b b a a | g2~ g8 r a^\markup \small \italic "Refrén" b |
c8 r f, r f r g g | b8 r e, r e r f g | a8 r d, r d r e f | g2. a8 b |
c8 f, f f f4 g8 a | b8 e, e e e4 f8 g | a8 f g a b g a b | c2~ c8 r r4 \bar "|."
}

text = \lyricmode {
U stu -- dán -- ky tři pa -- nen -- ky kle -- kly si,
pl -- né džbán -- ky na -- bra -- ly a řek -- ly si:
švar -- ný hoch až při -- jde ke stu -- dán -- ce k~nám,
my mu dá -- me chlad -- né vo -- dy pl -- ný džbán.
Zle -- sa na pa -- louk vy -- šel vo -- ják bo -- ha -- týr
s~vou -- sem ná -- ram -- ně bo -- ha -- tým.
Po dě -- vuš -- kách kouk, tro -- chu při -- krou -- til si knír,
jak se na vo -- jí -- na slu -- ší, ře -- kl jim:
Ty mě pa -- nen -- ko, na -- poj vo -- děn -- kou,
nic si z~vou -- sů mých ne -- dě -- lej.
Na fron -- tě se pro fou -- sy vo -- ják han -- bit ne -- mu -- sí,
no a vo -- ják já jsem z~grun -- tu ve -- se -- lej!
}

accompaniment = \chordmode {
s1 | c1 | g1 | g1:7 |
c1 | c1 | g1 | g1:7 |
c1 | g1 | a1:m |
e2 a2:m | a1:m | g1:7 |
c1 | g4 d4:7 g4 d4:7 | g1 |
g1:7 | c1 | g1 | c1 |
g1:7 | c1 | g1:7 | c1 |
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
        \midi { \tempo 4=126 }
}
