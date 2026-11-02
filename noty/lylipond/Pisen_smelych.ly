\version "2.24.0"
\header {
        title = "Píseň smělých"
        composer = "V. Bělyj"
        poet = "A. Surkov, český text Jelena Holečková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Energicky" 4=100
d4 d8. e16 f4 f8. e16 | f4 d r2 |
d4 d8. e16 f8[( e]) f g | a2 r |
d4 d8. c16 d4 c8. bes16 | c2 a4 r |
g4 f8. g16 a4 a,8. a16 | d4 r r2 |
c'4 a8. f16 c4 f8. a16 | bes4.( a8) g4 r |
c4 a8. f16 e8 a4 g8 | f2 r |
d'4 bes8. a16 g8[( d']) c8. bes16 | c4 a r2 |
bes4 g8. f16 e4 d8. c16 | a'2( bes4 c8) r |
d4 bes8. a16 g8[( d']) c8. bes16 | c4 a r2 |
bes4 a8. g16 c4 c,8. c16 | f2 r \bar "|."
}

text = \lyricmode {
V~mrač -- nech zem s~ob -- lo -- hou splý -- vá,
blý -- ská se zpod čer -- ných kup.
Ví -- ří se prach a v~něm zpí -- vá
po -- plaš -- ná pí -- snič -- ka trub.
Sta -- lin zve nás vzhů -- ru k~bo -- ji
od -- vá -- žně fa -- šis -- ty bít,
smě -- lé -- ho kul -- ka se bo -- jí,
bo -- dák se chrá -- ní ho vzít.
Smě -- lé -- ho kul -- ka se bo -- jí,
bo -- dák se chrá -- ní ho vzít.
}

accompaniment = \chordmode {
d1:m d:m d2.:m bes4 f1
bes1 f g2:m a:7 d1:m
f1 g2:m c f2 a d1:m
bes1 f g2:m c:7 f1
bes1 f g2:m c:7 f1
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
        \midi { \tempo 4=100 }
}
