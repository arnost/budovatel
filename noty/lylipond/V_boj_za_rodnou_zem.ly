\version "2.24.0"
\header {
        title = "V boj za rodnou zem"
        composer = "Z. Kompanějec"
        poet = "Lev Ošanin, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \minor \tempo "Pochodem" 4=108
a8 f bes g | a4 g8 f | e g f e | f4 g |
a8 d, bes' a | g g f g | a2 |
d,8 e fis g | a4 fis8 d | d c' bes a | bes4 g |
a8 f bes g | a4 f | g8 g f e | d r r4 |
c'4 d | c8. bes16 a4 | a4 bes | a8. g16 f4 |
d8 d g a | bes8. a16 g8 g | a2 |
c4 f, | bes8. c16 d4 | d c | bes8. a16 g4 |
a8. d,16 c'8 bes | a8. bes16 a8 g | d2 \bar "|."
}

text = \lyricmode {
Le -- tí ko -- ně buj -- ní, a le -- tí po -- lem pu -- stým,
ve -- li -- tel se vzpří -- mil, ša -- vlí mách’.
A už ka -- va -- le -- ri -- e při -- ta -- hu -- je uz -- dy,
do bo -- je se že -- ne po es -- kad -- ro -- nách.
V~boj za rod -- nou zem! V~boj za Sta -- li -- na!
Čis -- tý je náš bo -- jo -- vnic -- ký štít.
Ko -- ní oh -- ni -- vých te -- pou ko -- py -- ta,
po sta -- lin -- sku bu -- de -- me se bít!
}

accompaniment = \chordmode {
d4:m g:m d2:m c:7 d4:m g:m
d4:m g:m c2:7 f
d2:7 d:7 d:7 g:m
d4:m g:m d2:m g4:m a:7 d:m c:7
f4 bes f2 d4:m g:m d2:m
g2:m g4:m c:7 f2
f2 bes bes4 d:7 g2:m
d4:m bes d:m a:7 d2:m
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
