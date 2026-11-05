\version "2.24.0"
\header {
        title = "Do práce již"
        composer = "István Raics"
        poet = "Ferenc Szabó, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
d4\mf d8. e16 f4. r8 | d4 d8. e16 f4. r16 d16 | e4 f g f8. e16 | f4 f2 r4 |
d4 d8. e16 f4. r8 | d4 d8. e16 f4. r16 e16 | f4 g a g8. f16 | g4 g2 c,4\f |
f4 g a g8. f16 | g4 g2 a4 | bes4 bes8. c16 d4 c8. bes16 | a2 r4 c4^\markup { \italic "Refrén" } |
d4 d8. e16 f4 e8. d16 | c8. d16 c8. bes16 a4 a8. g16 | a4 g8. f16 g4 a | f2 r4 c'4 |
d4 d8. e16 f4 e8. d16 | c8. d16 c8. bes16 a4 a8. g16 | a4 g8. f16 g4 a | f2 r2 \bar "|."
}

text = \lyricmode {
Do prá -- ce již! S~vý -- ro -- bou výš!
Lid k~prá -- ci do fab -- rik mí -- ří.
Slyš hu -- čet stroj, zříš li -- du roj,
jak pra -- cí svou bla -- ho ší -- ří.
Ať žha -- vé že -- le -- zo sví -- tí,
ať o -- blo -- ha též ru -- dě plá.
Vždyť jen v~ze -- mi té mů -- že
člo -- věk šťa -- stně ží -- ti,
kde děl -- ný lid vlá -- du má.
Vždyť jen v~ze -- mi té mů -- že
člo -- věk šťa -- stně ží -- ti,
kde děl -- ný lid vlá -- du má.
}

accompaniment = \chordmode {
d2:m d:m d:m d:m a1:7 d2:m d:m
d2:m d:m d:m d:m d:m f c:7 c:7
f2 f c:7 c:7 bes bes f f
bes2 bes f f f c:7 f f
bes2 bes f f f c:7 f1
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
