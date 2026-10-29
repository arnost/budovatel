\version "2.24.0"
\header {
        title = "Májová"
        composer = "Pál Kadosa"
        poet = "I. Raics, český text A. Hostomská"
}

melody = \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Volně" 4=88
c4\p f | g8 a f4 | g4 d \breathe | c4 f | g8 a f4 | g4\< c\! \breathe |
bes8 a g bes | a8 f g4 | f2 \breathe |
\repeat volta 2 {
c'4 c | c c | bes8 a g4 \breathe | c4 d | bes4 r8 a | g8 f e d \breathe |
c4 f | g8 a f4 | g4 d \breathe | c4 f | g8 a f4 | g4\< c\! |
bes8 a g bes | a8 f g4 | f2 |
}
}

text = \lyricmode {
\set stanza = "1."
Pojď a ve -- se -- le zpí -- vej, na květ stro -- mu se dí -- vej,
pí -- sni -- čka -- mi při -- ví -- tej máj.
Prv -- ní máj už při -- šel sem, ve -- se -- le mu za -- tan -- cu -- jem!
S~ná -- mi, ži -- vo -- te, já -- sej, pí -- sní svo -- bo -- du hlá -- sej,
pro -- buď v~ce -- lé ze -- mi lid náš!
}

accompaniment = \chordmode {
f2 f bes f f c:7
g2:m f4 c:7 f2
\repeat volta 2 {
f2 f bes4 g:m f4 d:m g2:m c:7
f2 f bes f f c:7
g2:m f4 c:7 f2
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
        \midi { \tempo 4=88 }
}
