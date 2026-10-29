\version "2.24.0"
\header {
        title = "Píseň letce"
        composer = "M. Jordanskij"
        poet = "V. Majakovskij, český text Karel Tachovský"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Rychle" 4=132
\partial 8 e8 |
\repeat volta 2 {
b'4 g8 b | c a r4 | b8 b g b | c a r4 | d8. c16 b8 a | b4 e8 r8\fermata | b8. a16 g8 fis |
}
\alternative {
{ e8 e r e }
{ e8 e r g^"Refrén" }
}
e4. d8 | e4 r8 g | e4. d8 | e4 r8 g | e4. g8 | c4. d8 | e2 ~ | e4 r8 e |
d4. b8 | e,4 r8 e' | c4. a8 | f!4 r8 c' | b2 ~ | b8 a g fis | e4 r | r4 e8 e |
\repeat volta 2 {
b'4 g8 b | c a e e | b'4 g8 b | c a r4 | d8. c16 b8 a | b4 e8 r8\fermata | b8. a16 g8 fis |
}
\alternative {
{ e8 e e e }
{ e8 e r g^"Refrén" }
}
e4. d8 | e4 r8 g | e4. d8 | e4 r8 g | e4. g8 | c4. d8 | e2 ~ | e4 r8 e |
d4. b8 | e,4 r8 e' | c4. a8 | f!4 r8 c' | b2 ~ | b8 a g b | e2 ~ | e4 r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Já strach ne -- chci mí -- ti z~de -- ště kru -- po -- bi -- tí.
Mrá -- ček o -- ble -- tím si, mrá -- ček lé -- ta -- jí -- cí. Já
jí -- cí. Le -- tí stroj můj k~mě -- sí -- ci blíž, k~hvě -- zdám to tá -- hne nás,
ač hou -- fy hvězd i lu -- ny tvář tak nám je vzdá -- le -- ná.
\set stanza = "2."
Bí -- lé mrá -- čky pro -- tr -- hám, po -- le -- tím až k~mo -- ři tam.
Bez ře -- čí, bez bá -- zně vy -- le -- tím nad strá -- ně. Bí -- lé
strá -- ně. Le -- tí stroj můj k~mě -- sí -- ci blíž, k~hvě -- zdám to tá -- hne nás,
ač hou -- fy hvězd i lu -- ny tvář tak nám je vzdá -- le -- ná.
}

accompaniment = \chordmode {
\partial 8 e8:m
\repeat volta 2 {
e2:m a:m e:m c d:7 g4 c e4:m b:7
}
\alternative {
{ e2:m }
{ e4.:m g8:7 }
}
c4. f8 c4. g8:7 c4. f8 c4. g8:7 c4. g8:7 c4. g8:7 c2 c4. a8:m
g2 e:m a:m f e:m e4:m b:7 e2:m e:m
\repeat volta 2 {
e2:m a:m e:m c d:7 e:m b:7
}
\alternative {
{ e2:m }
{ e2:m }
}
c4. f8 c2 c4. f8 c2 c4. g8 c4. g8 c2 c4. a8:m
g2 e:m a:m f e:m e4:m b:7 e2:m e:m
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
