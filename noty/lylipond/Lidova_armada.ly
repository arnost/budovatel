\version "2.24.0"
\header {
        title = "Lidová armáda"
        composer = "Const. Costoli"
        poet = "Valeriu Cămpeanu, český text Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Pochodem" 4=108
\partial 4 d8. d16 |
b'4. fis8 | g8 a b c | e4 d~ | d4 d8. g,16 | g4. g8 |
g8 g fis g | a2~ | a8 r e8. e16 | c'4. b8 | a8 b c d |
fis4 e~ | e4 d8 d | fis4. e8 | d8 a gis a | b2~ |
b4 d,8. d16 | b'4. fis8 | g8 a b c | e4 d~ | d4 b8. d16 |
g4. fis8 | g8 fis fis d | e2~ | e4 e8. e16 | fis4. e8 |
d8 e fis e | e4 d~ | d4 d8. d16 | e4. c8 | fis8 fis fis fis |
g2~ | g8 r8 \bar "|."
}

text = \lyricmode {
Jsme ar -- má -- da, kte -- rá s~li -- dem sto -- jí,
věr -- ně slou -- ží vě -- ci ná -- ro -- da,
pů -- jde s~ním ať v~mí -- ru ne -- bo v~bo -- ji,
ni -- kdy zrád -- cům ru -- ku ne -- po -- dá
ži -- vot náš nám mat -- ky z~li -- du da -- ly,
s~li -- dem v~prá -- ci bok po bo -- ku jdem,
pro -- to věr -- nost jsme mu pří -- sa -- ha -- li
pod vla -- jí -- cím li -- du pra -- po -- rem.
}

accompaniment = \chordmode {
\partial 4 d4:7
d2:7 d2:7 d4:7 g4 g2 c2
g4 d8:7 g8 d2 d4 a4:m a2:m a2:m
d4:7 a4:m a4:m d4 d2:7 d2:7 g2
d2:7 g2 g2 d4:7 g4 g2
g2 g2 c2 c4 a4:m d2:7
d2:7 d2:7 d4:7 g4 c2 d2:7
g2 g8
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
        \midi { \tempo 4=108 }
}
