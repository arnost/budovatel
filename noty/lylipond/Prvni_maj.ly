\version "2.24.0"
\header {
        title = "První máj"
        composer = "D. Kabalevskij"
        poet = "O. Vysotská, český text L. Kundera"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Pochodovým tempem" 4=112
r4 d8 e | fis e d fis | a4 e | b'8. b16 b4 ~ | b8 a g fis | e4 e | d4. e8 | fis4 d | a'2 | R2 |
a8. a16 a4 ~ | a8 g f! g | a4 f! | bes8. bes16 bes4 ~ | bes8 a g f! | g4 g | a4. g8 | e4 a | d,2 \bar "|."
}

text = \lyricmode {
Slun -- ce sví -- tí do všech tvá -- ří, pra -- por prá -- ce ru -- dě zá -- ří,
výš jej po -- zve -- dnem.
Zvu -- čné pí -- sně za -- no -- tu -- jem, s~do -- spě -- lý -- mi spo -- lu pů -- jdem
svá -- te -- čním tím dnem.
}

accompaniment = \chordmode {
d2 d d g g4 b:7 e:m a d2 d4:7 bes:7 a2 a:7
f2 f f bes c:7 c:7 a a d
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
