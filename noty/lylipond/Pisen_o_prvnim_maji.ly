\version "2.24.0"
\header {
        title = "Píseň o Prvním máji"
        composer = "Fr. A. Kypta"
        poet = "K. Bradáč"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem, rázně" 4=112
\partial 4 d4 |
b'4 b a a | g g d d | r8 d b d g4 g | a b a d, |
c'4 c b b | a a d, d | r8 d b d g4 g | a d, g r4 |
\repeat volta 2 {
b4 d8 b a4 g8 a | g2 d | d'4 d8 d c b4 a8 | b2 ~ b4 r |
a4 a8 b c b a r | g4 g8 a b a g r | e4 c' c r | fis,4 d' d r |
c8[( b]) a2 b4 | g2 r2 |
}
}

text = \lyricmode {
Nad ná -- měs -- tí i nad u -- li -- ce pra -- po -- ry má -- vá slav -- ný den.
Jdou pra -- cu -- jí -- cích sta -- ti -- sí -- ce, vy -- pl -- nit jdou dáv -- ný svůj sen.
Na poz -- drav pra -- po -- ry vla -- jí, děl -- ní -- ka prv -- ní je máj,
jak kvě -- ty svo -- bo -- dy, jak kvě -- ty svo -- bo -- dy,
jež ru -- dě, jež ru -- dě, roz -- kvé -- ta -- jí.
}

accompaniment = \chordmode {
\partial 4 s4
g1 g g d d d g d2 g
\repeat volta 2 {
g2 c g1 d g d:7 e:m c2 a:m d e:7 a4:m d2. g1
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
