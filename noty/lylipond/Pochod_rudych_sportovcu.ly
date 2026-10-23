\version "2.24.0"
\header {
        title = "Pochod rudých sportovců"
        composer = "Vít Nejedlý"
        poet = "Jan Dolina"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Pochodem" 4=112
d4 d8 d f4 d | bes'8. bes16 bes4 bes8 a4. | e4 f8 g f4 e | d f a8. a16 a4 |
d8 d d4 d c | bes8 c4 d8 a a4. | g4 f8 e f4 d | f g a8 a a4 |
d,4 d8 d f4 d | bes'4 bes8 bes bes4 a | e4 f8 g f e r4 | d8 e f g a4 r |
d8 d d4 d8 c4. | bes8 c d4 a a | bes8 bes bes4 a8 a c bes | a4 f d r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Když ru -- dý pra -- por zbar -- ve -- ný kr -- ví
na žer -- di v~mo -- dro dne se po -- vzne -- se,
děl -- nic -- ký sports -- man, z~děl -- ní -- ků pr -- vý,
za je -- ho bar -- vou muž -- ně po -- hne se
a ma -- sy za ním ce -- stu si kle -- stí,
za če -- tou če -- ta, řa -- da za řa -- dou,
mi -- li -- on pa -- ží, mi -- li -- on pě -- stí,
bu -- de -- me o -- bro -- vi -- tou ar -- má -- dou.
}

accompaniment = \chordmode {
d1:m | g2:m d:m | a2:7 d:m | bes2 a:7 |
g2:m f | g:m d:m | g:m d:m | bes a:7 |
d1:m | g2:m d:m | a1:7 | d2:m a:7 |
bes2 f | g:m d:m | g:m a:7 | d1:m |
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
