\version "2.24.0"
\header {
        title = "My jsme vojáci naší republiky"
        composer = "F. Vojnar"
        poet = "F. Vojnar"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Rázně" 4=112
\repeat volta 3 {
d4 e f8 e4 d8 | g8 g f e a4 d, | g4 f8 g a4 f | bes8 a g f e2 |
f4 g8 g a4. f8 | bes8 bes a g c4 a | bes4 a8 g c4 a | g8 f e d c2 |
g'4 a bes8 a4 g8 | a4 bes c8 a g f | e8 e4 f8 g4 e | f8 e f g a2 |
d4 bes d c8 bes | a8 a f g a2 | g4 g8 a bes2 | a4 bes c r |
d4 bes f' e8 d | a8 a f g a2 | g4 a8 bes c2 |
}
\alternative {
  { a4 g f r }
  { a4 g f r \bar "|." }
}
}

text = \lyricmode {
My jsme vo -- já -- ci na -- ší re -- pu -- bli -- ky,
jsme vši -- chni sy -- ny pra -- cu -- jí -- cích tříd,
bu -- du -- jem mír a ne -- pře -- jem si vál -- ky,
pro -- to -- že chce -- me ra -- do -- stně -- ji žít.
My jsme vo -- já -- ci na -- ší re -- pu -- bli -- ky,
ne -- přá -- tel sí -- ly ne -- bu -- dem se bát.
Svor -- ně pů -- jde -- me za prav -- du se bít,
jak Hu -- si -- té bo -- jo -- vat,
svor -- ně pů -- jde -- me za prav -- du se bít,
jak Hu -- si -- té
bo -- jo -- vat.
chce -- me dál!
}

accompaniment = \chordmode {
\repeat volta 3 {
d1:m | g2:m d:m | g2:m d:m | g2:m a |
d4:m c f2 | bes4 c:7 f2 | bes2 f | g2:7 c |
c1:7 | f1 | a1 | d2:m a |
bes1 | f1 | c1:7 | f4 c:7 f2:7 |
bes1 | f2 d | g2:m c |
}
\alternative {
  { f4 c:7 f2 }
  { f4 c:7 f2 }
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
