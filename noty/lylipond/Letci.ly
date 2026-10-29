\version "2.24.0"
\header {
        title = "Letci"
        composer = "A. Alexandrov"
        poet = "O. Vysotská, český text Ludvík Kundera"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Živě" 4=120
\partial 8 c8\mf |
f4 e8. f16 g4 f8. e16 | d4 g8. f16 e4 c8. c16 |
f4 f8. g16 a4 f8. a16 | c2. \breathe c4 |
d4 bes8. a16 g4 a8 bes | c4 a8. g16 f4 g8 \breathe a |
bes4 d,8. f16 e4 g8. a16 | f2. \breathe c'4\f |
d4 bes8. a16 g4 a8 bes | c4 a8. g16 f4 g8 \breathe a |
bes4 d,8. f16 e4 g8. a16 | f2. r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Hle -- dí le -- tci s~vý -- šin na nás, kte -- ří s~pí -- sní dnes
ří -- jno -- vým krá -- čí -- me dnem.
Na ná -- mě -- stí sví -- tí pla -- ká -- ty a kví -- tí,
my k~ří -- jno -- vé sla -- vno -- sti jdem.
Na ná -- mě -- stí sví -- tí pla -- ká -- ty a kví -- tí,
my k~ří -- jno -- vé sla -- vno -- sti jdem.
}

accompaniment = \chordmode {
\partial 8 s8
f2 c g:m c:7
f1 a:m
bes2 g:m f d:m g:m c:7 f1
bes2 g:m f d:m g:m c:7 f1
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
        \midi { \tempo 4=120 }
}
