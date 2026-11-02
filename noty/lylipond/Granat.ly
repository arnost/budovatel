\version "2.24.0"
\header {
        title = "Granát"
        composer = "Anatolij Novikov"
        poet = "Viktor Gusev, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key f \major \tempo "Živě" 4=120
c4.\fermata^"solo" a8 | bes8 bes a g | a8 f r c'^"sbor" | a8 f r4 |
f4^"solo" g | a8. f16 bes8 d | c2 |
c4. a8 | bes8 bes a g | a8 f r c'^"sbor" | a8 f r4 |
d4.^"solo" e8 | f8. f16 g8 e | a2 |
\repeat volta 2 {
d,4^"sbor" e | f8 d r bes' | a4 g | f8 d r d |
g4 a | bes8[( g]) es'4 | d4. c8 | g4 r |
c,4 c | c'4. bes8 | a4 d | c8 bes a g |
f4 d |
}
\alternative {
  { e4 d' | a4 a8. bes16 | a8 g f e | d'2~ | d4 r }
  { e,4 a | d2~ | d4 r \bar "|." }
}
}

text = \lyricmode {
Já vám, ka -- ma -- rá -- di, po -- vím (jen krá -- tce!)
o Cha -- san -- ských kon -- či -- nách.
Jak si gra -- nát ve -- dl v~bo -- ji (v~zlé vál -- ce!),
ten můj bles -- ku -- rych -- lý pták.
Hej, můj gra -- nát, můj sou -- druh gra -- nát,
my dva se všu -- de pro -- bi -- jem.
Z~bo -- je do bo -- je jdem spo -- lu,
do bo -- je za
rod -- nou zem, do bo -- je za rod -- nou zem.
rod -- nou zem.
}

accompaniment = \chordmode {
f2 | c2:7 | f4. c8 | f2 |
f4 c | f4 bes | f2 |
f2 | c2:7 | f4. c8 | f2 |
d2:m | g4:7 c | a2 |
\repeat volta 2 {
d4:m a:7 | d4.:m g8:m | d4:m a:7 | d2:m |
g2:m | c2:m | d2:7 | g2:m |
c2:7 | c2:7 | f4 d | g2:m |
d2:m |
}
\alternative {
  { c2:7 | d2:m | a2:7 | d2:m | d2:m }
  { a2:7 | d2:m | d2:m }
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
        \midi { \tempo 4=120 }
}
