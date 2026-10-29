\version "2.24.0"
\header {
        title = "O Péťovi"
        composer = "D. Kabalevskij"
        poet = "N. Gal, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Vesele" 4=112
c8\mf_\markup { \italic "Jeden:" } c c b | c4 a | g8 g g a | g4 e \breathe |
f8 f f e | d4 g | e8 e d d | c4 c \breathe |
c'4\f_\markup { \italic "Všichni:" } a | c g | a8[( g]) f[( e]) | g2 \breathe |
f4 e | d g | c,2 | c4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
U ře -- ky, u ří -- čky tře -- po -- tá se pra -- por,
sto -- jí u té ří -- čky pi -- o -- nýr -- ský tá -- bor.
To je pře -- ce sprá -- vná věc:
pi -- o -- nýr -- ský tá -- bor.
}

accompaniment = \chordmode {
c2 a4:m f c g:7 c2
f2:m g:7 g:7 c
f2 c2 f4 d:m c2
f2 g:7 c c
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
