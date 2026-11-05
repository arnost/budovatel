\version "2.24.0"
\header {
        title = "Na pochod, mládeži"
        composer = "J. Šterc"
        poet = "V. Merhaut"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \minor \tempo "Pochodem" 4=112
c4 c8. c16 c8 bes aes g | f1 | c'4 c8. c16 \slurDashed c8( bes) \slurSolid aes g | f1 |
g8. g16 g8 g g aes bes g | aes8 aes aes aes aes bes c aes | c4 bes aes g | f2. c8. c16 \bar "||"
\key f \major
f4 f8 f g4 g8 g | a2. c,8. c16 | a'4 a8 a bes4 bes8 bes | c2. f,8 f |
d'8. d16 d8 d c r f, f | d'8. d16 d8 d c r c, c |
f4 f8 f a4 g8. f16 | g2. c,8. c16 | f4 f8 f g4 g8 g | a2. c,8. c16 |
a'4 a8 a bes4 bes8 bes | c2. f,8 f | d'8. d16 d8 d c r f, f | d'8. d16 d8 d c r f, f |
g4 g8. g16 c4 c8. c16 | f2. r4 \bar "|."
}

text = \lyricmode {
\set ignoreMelismata = ##t
Zní pí -- seň do po -- cho -- du vpřed,
bou -- rá -- me za -- o -- sta -- lý svět,
kaž -- dý z~nás je ú -- der -- ní -- kem,
bu -- douc -- no -- sti bo -- jov -- ní -- kem
v~řa -- dách Č S M.
\unset ignoreMelismata
Na po -- chod pí -- seň zní mlá -- de -- ži,
na nás všech bu -- douc -- nost zá -- le -- ží.
Mlá -- dí pra -- cu -- jí -- cích mas,
ku -- pře -- du jde v~je -- den ráz,
skon -- cu -- jem s~re -- akč -- ní pří -- tě -- ží.
Chce -- me žít, pra -- co -- vat pro svou zem,
chce -- me vý -- stra -- hu dát zrád -- cům všem,
hr -- dě mod -- rý pra -- por vlá,
za -- zní pí -- seň ví -- těz -- ná,
za svůj cíl jde se bít Č S M!
}

textB = \lyricmode {
Nám bu -- douc -- nost jen pat -- řit má,
šťast -- ná a vždy ví -- těz -- ná,
na po -- lích a v~měs -- tech všu -- de,
pra -- co -- vat pro ná -- rod bu -- de
mlá -- dež jed -- not -- ná.
}

accompaniment = \chordmode {
c1 f4:m des2 f4:m c1 f4:m des2 f4:m
c1 f1:m c f
f2 c f1 f2 c:7 f1
bes2 f bes f f2. g4:m c1
f2 c f1 f2 c:7 f1
bes2 f bes f g2:m c4 c:7 f4 f:6 f2
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
        \midi { \tempo 4=112 }
}
