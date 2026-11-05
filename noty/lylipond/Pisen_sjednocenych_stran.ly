\version "2.24.0"
\header {
        title = "Píseň sjednocených stran"
        composer = "Andrzej Panufnik"
        poet = "Leopold Lewin, český text Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key e \minor \tempo "Pochod" 4=112
e4 e8. e16 fis4 e | e4 e8. e16 g4 fis |
e4 e8. e16 d'8[( c]) b a | b2 fis |
e4 e8. e16 fis4 e | e4 e8. e16 g4 fis |
e4 e8. e16 b'8[( a]) g fis | e2 e4 r |
\key e \major
gis4 fis8. e16 a4 gis8. fis16 | gis2 e4 r |
b'4 a8. gis16 cis4 a | b2 r8 b gis e |
e'4 e r8 e dis8. cis16 | b2 r8 b gis e |
fis4 fis r8 gis fis8. e16 | e2~ e8 r4 \bar "|."
}

text = \lyricmode {
Ten je -- hož srd -- ce se ne -- u -- lek -- ne,
kdo o -- bě -- tí ne -- bo -- jí se,
vše co je u nás mla -- dé a pěk -- né,
pod pra -- por náš za -- řa -- dí se.
Vpřed pro -- ti ka -- pi -- ta -- lis -- mu
se stra -- nou, vůd -- cem mas,
k~so -- ci -- a -- lis -- mu po -- ve -- de nás.
K~so -- ci -- a -- lis -- mu po -- ve -- de nás!
}

accompaniment = \chordmode {
e2:m a2:m e2:m a4:m b4:7 e2:m d2:7 g2 b2:7
e1:m e2:m a4:m b4:7 e2:m b2:7 e1:m
e2 a2 e1 e2 a2 e1
a1 e1 b1 e2.
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
