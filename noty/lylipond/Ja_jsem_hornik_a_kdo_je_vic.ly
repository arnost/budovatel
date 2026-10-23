\version "2.24.0"
\header {
        title = "Já jsem horník a kdo je víc"
        composer = "Rudolf Kubín"
        poet = "Bedřich Bičiště"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key bes \major \tempo "Slavnostně" 4=88
bes2. c4 | d f4. g8 f bes, | d2 ~ d8 es d f, | bes1 |
c2. d4 | es g4. a8 g c, | es2 ~ es8 d c bes | f'1 |
bes,2 c4 f | es d c bes | g a bes d | c1 |
bes2 c4 f | es d c bes | a c d e, | f2 ~ f8 r r4 |
d'2 c4 bes | g' f c2 | es d4 c | bes2 g |
d'2 c4 bes | a' g d4.. f16 | f4 es d c | bes1\fermata \bar "|."
}

text = \lyricmode {
Já jsem hor -- ník a kdo je víc, __ a kdo je víc,
z~prá -- ce tem -- ná je mo -- je líc, __ je mo -- je líc!
Sbí -- ječ -- kou ru -- bám svě -- tu no -- vý, lep -- ší řád.
Žár u -- hlí v~ru -- dém kvě -- tu zjas -- ní ce -- lý stát. __
V~stí -- nu mých mo -- zo -- lů cíl pev -- ný zá -- ří:
fá -- rej -- me do do -- lů, neb ví -- těz -- ství jdem' vstříc!
}

accompaniment = \chordmode {
bes2. f4 bes1 bes2 bes8 es bes f:7 bes1
c2.:m b4:dim c1:m c2:m c8:m g:m c:m c:7 f1
f1 f f f
bes2 f f4:7 bes f g:m7 f2 c:7 f1
bes2 f4:7 bes f1:7 es4 es:m bes d:7 g1:m
bes2 f4:7 bes es2 g4.. b16:dim b4:dim c:m bes f:7 bes1
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
