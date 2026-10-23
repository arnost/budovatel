\version "2.24.0"
\header {
        title = "Píseň komunistické straně"
        composer = "Václav Dobiáš"
        poet = "Vítězslav Nezval"
}

melody =  \relative c' {
        \clef treble
        \time 2/2 \key g \major \tempo "Vřele" 4=108
\compressMMRests { R1*4 }
\repeat volta 4 {
e4 e2 e4 | e'2 e | d4 c b a | g2 e |
r4 e fis g | a2 a | fis4 g a d, | b'2. r4 |
e,4 g2 b4 | c2 c | fis,4 g a fis | b2 b |
e,4( fis) g e | a2. g4 | fis e dis e | b2. r4 |
e4 g2 b4 | c2 c | d4 c b a | b2 d, |
c'4( b) c b | a2 e | d e' | d b | a1 ~ | a2 r |
r4 d, g a | b a b g | e2 e | c c |
d2 d4 e | fis2. e4 | d b d g | g2 d |
r4 d g a | b a b g | a2 e | a g |
fis2 fis4 e | d d e fis | g1 | fis2. r4 |
}
gis1 | gis2( fis) | gis1 | gis2( fis) | b1 | b1\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Za kaž -- dý kra -- jíc chle -- ba pro děl -- ní -- ky
jsi ved -- la den -- ně tři -- cet ro -- ků boj.
Za dom -- ká -- ře a za ře -- me -- sl -- ní -- ky,
za lid -- skou prá -- ci, za děl -- ní -- kův stroj.
Za dom -- ká -- ře a za ře -- me -- sl -- ní -- ky,
za lid -- skou prá -- ci, za děl -- ní -- kův stroj. __
Za svo -- bo -- du a za ob -- čan -- ská prá -- va:
v~tom je tvá sí -- la, v~tom je tvo -- je slá -- va!
Za svo -- bo -- du a za ob -- čan -- ská prá -- va;
v~tom je tvá sí -- la, tvo -- je slá -- va!
Slá -- va! Slá -- va! Slá -- va!
}

accompaniment = \chordmode {
s1*4
\repeat volta 4 {
e1:m e:m a:m e:m e:m a:m d:7 g
e1:m a:m d:7 g c a:m a:m b
e1:m a:m d:7 g a2:m e:7 a1:7 d b2:m e:m d1 d
g1 g c2 e:7 a:m a:7 d1:7 d:7 g e2:m d
g1 g a2:m e:7 a1:7 d:7 d:7 g b:7
}
e1 a e a e e
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
