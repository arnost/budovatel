\version "2.24.0"
\header {
        title = "Písnička panu presidentovi"
        composer = "Alois Šebestík"
        poet = "Z. Horal"
}

melody = \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Mírně" 4=92
f8\mf f g g | a a bes g | e e d e | f4 g | a r |
c8 a bes g | a g f c \breathe | f4 bes8 a | g f e4 | f r \bar "||"
d8 d f f | g8. g16 d8 d | d d f f | g8. g16 a4 \breathe |
bes8 bes a g | c c c bes \breathe | a4 c8 bes | a bes g4 | f r |
\bar "|."
}

text = \lyricmode {
Bě -- ží ce -- sta, bě -- ží z~mě -- sta, bě -- ží z~ka -- ždé ve -- sni -- čky;
ze všech le -- tí po -- zdrav dě -- tí jak bí -- lé ho -- lu -- bi -- čky.
Za to, že má tá -- ta prá -- ci, za to, že si mů -- žem hrát,
chcem Vám, pa -- ne pre -- si -- den -- te, pí -- sni -- čkou po -- dě -- ko -- vat.
}

accompaniment = \chordmode {
f2 f4 g:m c2:7 d4:m c:7 f2
f4 c f2 d4:m g:m c2:7 f2
bes2 bes bes g4:m d:7
g4:m c:7 f g:m f2 c:7 f
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
        \midi { \tempo 4=92 }
}
