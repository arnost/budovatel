\version "2.24.0"
\header {
        title = "Radosť z práce"
        subtitle = "Pochod"
        composer = "R. Červenka"
        poet = "Oto Ivančan"
}

melody =  \relative c'' {
        \clef treble
        \time 2/2 \key c \major \tempo "Tempo di Marcia" 2=60
\repeat volta 2 {
g2 g4. a8 | g2 f | e d | c4 r r2 | c2 e4. g8 |
c2 c | b c | d1 | g,2 g4. g8 | d'2 g, |
c2 d | e r | d d4. b8 | d2 c | b a | g r |
}
\mark \markup { \italic Refrén }
g1 | g2 f | e1 | g | c2 d | c a | g1 | R1 |
g1 | g2 f | e1 | g | c2 c | b c | d1 | R1 |
a1 | a2 g | f1 | fis | e2 e | e g | c1 | R1 |
c1 | c2 d | e1 | c | d2 d | c4 b a b | c r r2 | R1 \bar "|."
}

text = \lyricmode {
Žia -- ri už ran -- ný sln -- ka jas,
k~prá -- ci sa maj -- me, už je čas.
Si -- ré -- ny fab -- rík vo -- la -- jú,
kaž -- dé -- mu ces -- tou za -- hra -- jú.
Čuj na -- šu pie -- seň, srd -- ce do nej daj,
nech le -- tí v~dia -- le, nech ju po -- zná kraj,
nech zne -- je stá -- le, kde sa bu -- du -- je,
kde na -- šim hes -- lom „ús -- pech pä -- troč -- ni -- ce“ je!
}

textB = \lyricmode {
Tam, kde sa s~lás -- kou pra -- cu -- je,
tam sa aj ľud náš ra -- du -- je.
Hor’ sa do prá -- ce bu -- do -- vať,
len tak sa môž -- me dob -- re mať.
}

accompaniment = \chordmode {
\repeat volta 2 {
c1 c2 f2 c2 g2:7 c1 c1
d1:7 g2 c2 g1 g1:7 g1:7
c2 g2:7 c1 g1 a1:m d1:7 g1
}
c1 g1:7 c1 c1 f1 f1 c1 c1
c1 g1:7 c1 c1 d1:7 d1:7 g1:7 g1:7
d1:m a1:7 d1:m d1:7 c1 c2 g2 c1 c1
d1:7 d1:7 c1/g a1:m d1:m g1:7 c1 c1
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
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 2=60 }
}
