\version "2.24.0"
\header {
        title = "Hymn polskich partyzantów"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor \tempo "Pochodem" 4=108
c4\p c8 c g'4 g8 g |
c,4 c8 c g'4 g |
f4\mf f8. g16 as4 as8. bes16 |
c4 c8 d g,2 |
\repeat volta 2 {
es'4\f es8. d16 c4 as8 f |
d'4 d8 c g4 g |
d4\mf d8. d16 g4 g8 g |
g8 g a! b! c2 |
}
}

text = \lyricmode {
Już kres nad -- cho -- dzi na -- sze -- go mę -- czeń -- stwa,
pod -- ły A -- dol -- fie zbro -- dniar -- zu z~Da -- chau.
Ko -- niec twych zwy -- cię -- stw, nad chodzi twa klę -- ska,
za krew za -- pła -- te już po -- ra że byś brał.
}

accompaniment = \chordmode {
c2:m es2
as2 es2
f1:m
f2:m g2
\repeat volta 2 {
c2:m as2
g2:7 c2:m
g1:7
g2:7 c2:m
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
        \midi { \tempo 4=108 }
}
