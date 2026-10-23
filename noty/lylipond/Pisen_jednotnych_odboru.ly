\version "2.24.0"
\header {
        title = "Píseň jednotných odborů"
        composer = "Josef Stanislav"
        poet = "J. Pelc"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor \tempo "Pochodem" 4=112
g'8 g g g g g g g | c2 g4 r |
g8 g c, d es f g aes | g4 r r2 |
g8 g g g g g g g | c2 g4 \breathe c8 aes |
g4 aes8. f16 es4 f8. d16 | c4 r r2 \bar "||"
\key c \major
g'8.^"Refrén" a16 g2. | e8. d16 c4 r2 | g'8. a16 g2. | f8. e16 d4 r g |
e4 c d e | c4 r r2 | g'8. a16 g2. | e8. d16 c4 r2 |
g'8. a16 g2. | f8. e16 d4 r g | e4 c d e | c4 r r2 |
d4. e8 d4 e8 f | g4 c g e | f4 a g f | e4 g d r |
g8. a16 g2 r4 | e8. d16 c4 r g' | e4 c d e | c4 r r2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pra -- cu -- jí -- cí lid se v~po -- chod dá -- vá,
ve sku -- teč -- nost pro -- mě -- ní svůj sen,
vy -- bo -- ju -- je vše -- chna svo -- je prá -- va,
nad svě -- tem vlád -- nout smí prá -- ce jen.
Vo -- la -- jí pra -- po -- ry v~jed -- no -- tné od -- bo -- ry
za lep -- ší ži -- vot všech.
V~mo -- hut -- ném ná -- stu -- pu pí -- seň zní, zá -- stu -- pu
je zí -- třek v~na -- šich dnech.
Z~prá -- ce nám vze -- jde ji -- tro, v~kte -- rém
zpá -- te -- ční -- kům doj -- de dech.
Jed -- not -- né od -- bo -- ry, cíl pra -- cu -- jí -- cích všech.
}

accompaniment =\chordmode {
c2:m g:7 g1:7 c2:m g c1:m
c2:m g:7 c2.:m f4:m c4:m f:m c:m g:7 c1:m
c1 c g:7 g:7
c2 g:7 c1 c c
g1 g c2 g:7 c1
f1 c g:7 c2 g
c1 c c2 g:7 c1
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
