\version "2.24.0"
\header {
        title = "Dnes prapor náš"
        composer = "Jindřich Juřina"
        poet = "Jindřich Juřina"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \minor \tempo "Pochodem" 4=112
r8 d g a | bes4 d | bes a | g2 | d8 d g a |
bes4 d | c bes | a2 ~ | a8 d, fis g | a4 c |
bes4 a | bes2 | bes8 g g g | a4 ees | fis g | a2 ~ |
a8^\markup { \italic "Refrain" } d, g a \bar "||"
\key g \major
b2 ~ | b8 b a g | b2 | g8 d g a | b4 d, | c' b | a2 ~ |
a8 d, fis g | a2 ~ | a8 a g fis | a2 | fis8 d fis g | a4 a | c c | b2 ~ |
b8 d b g |
\repeat volta 2 {
  g2 ~ | g8 fis e d | fis2 ~ | fis8 d fis g | a a a a |
}
\alternative {
  { a8 c b a | b2 ~ | b8 d b a }
  { d8 c b a | g2 ~ | g8 r r4 \bar "|." }
}
}

text = \lyricmode {
Jak ra -- dost -- ně jdem vlast svou brá -- nit,
o -- blék -- nout o -- děv vo -- já -- ků, __
jdem pro -- ti zrád -- cům řád svůj chrá -- nit,
se ští -- tem li -- du děl -- ní -- ků. __
Dnes pra -- por náš __ ra -- dost -- ně vla -- je,
nad hla -- vou věč -- ně bu -- de vlát, __
a na -- še zem __ tak svo -- bod -- ná je,
pro -- to jí slou -- žím dnes -- ka rád. __
Ku -- pře -- du jít, __ ra -- dost -- ně žít, __
so -- ci -- a -- lis -- mus tře -- ba zbra -- ní u -- brá -- nit. __
Ku -- pře -- du zbra -- ní u -- brá -- nit. __
}

textB = \lyricmode {
My pev -- ní jsme a v~jed -- nom ši -- ku,
jak vo -- ják s~děl -- ní -- kem má stát, __
a ú -- der -- ník co vy -- bu -- du -- je,
to vo -- ják dnes -- ka chrá -- ní řád. __
}

textC = \lyricmode {
My s~pís -- ní na rtech bu -- du -- je -- me,
co o -- de -- přel nám sta -- rý řád, __
pro se -- be rá -- di po -- sta -- ví -- me
ne -- zá -- vi -- slý a pev -- ný stát. __
}

accompaniment = \chordmode {
s2 g:m d:7 g:m g:m
g:m c:m d d d
g4:m d g2:m g:m a:/e a:7 d:7
d:7
g2 g g g g c4 g d2:7
d:7 d:7 d:7 d:7 d:7 d:7 d:7 g
g
\repeat volta 2 { g2 g d:7 d:7 d:7 }
\alternative {
  { d:7 g g }
  { d:7 g g }
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
          \new Lyrics \lyricsto "one" \textB
          \new Lyrics \lyricsto "one" \textC
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
