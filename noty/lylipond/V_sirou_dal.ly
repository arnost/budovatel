\version "2.24.0"
\header {
        title = "V širou dál"
        composer = "Isaak Dunajevskij"
        poet = "Vasilij Lebeděv-Kumač, český text J. Černý"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo 4=100
        \partial 4
b8. b16 |
\repeat volta 3 {
  b'4. b8 b a g fis | e4 b4~ b8 r8 b8. b16 |
  b'4. c8 b a g fis | e4 r4 r4 d8 d8 |
  d'4. d8 d c b8. a16 | b4 g4 r4 g8. a16 |
  b4. b8 b a g a | b4~ b8 r8 r4 b,8. b16 |
  b'4. b8 b a g fis | e4 b4 r4 b8. b16 |
  b'4. c8 b a g fis | e2 r4 d8 d8 |
  d'4. d8 d c b8. a16 | b4 g4 r4 g8. fis16 |
  e4. fis8 g g a ais | b2~ b8 r8 d,8. d16 \bar "||"
  g4. fis8 e fis g a | g4 d4 r4 g8. g16 |
  c4. c8 c c b c | a2~ a8 r8 a8 b8 |
  c4. d8 e e d8. cis16 | d4 b4 r4 g8 e8 |
  d4. d'8 d cis c8. fis,16 | g4 r4 r4 a8 b8 |
  c4. d8 e e d cis | d4 b4 r4 g8 e8 |
  d4. d'8 d cis c8. fis,16 |
}
\alternative {
  { g2~ g8 r8 b,8. b16 | }
  { g'2~ g8 r8 r4 \bar "|." }
}
}

text = \lyricmode {
V~ši -- rou
dál od Mo -- skvy k~Sa -- cha -- li -- nu,
z~již -- ních hor do mo -- ří se -- ver -- ních,
krá -- čí děl -- ník a jak slun -- ce ví -- nu
u -- zrát dá -- vá ži -- vo -- tu ve smích.
Ži -- vot vol -- nost jak Vol -- ha hlu -- bo -- ká
ce -- lou ze -- mí moc -- ně se va -- lí.
Ná -- ruč ze -- mě te -- plá a ši -- ro -- ká
všech -- ny dě -- ti lás -- kou za -- ha -- lí.
Tou -- to vla -- stí vše -- ho mlá -- dí svě -- ta
sly -- šíš pí -- sně ho -- spo -- dá -- řů znít.
Ni -- kde to -- lik ště -- stí ne -- vy -- kvé -- tá,
ni -- kde ne -- lze ra -- do -- stně -- ji žít,
ni -- kde to -- lik ště -- stí ne -- vy -- kvé -- tá,
ni -- kde ne -- lze ra -- do -- stně -- ji
žít. Lou -- ky
svět.
}

textB = \lyricmode {
Lou -- ky
ni -- vy o -- ko ne -- pře -- sko -- čí,
krá -- sa to -- vá -- ren je bu -- de hrát,
slo -- vo sou -- dru -- hu na po -- zdrav zvu -- čí,
všu -- de zříš je ja -- ko pra -- por vlát.
Smích a ra -- dost ve všech tvá -- řích zpí -- vá
krás -- nou pí -- seň o bra -- tr -- ství ras,
slo -- vem sou -- dru -- hu, kde kraj za -- zní -- vá,
do -- mov naj -- deš, přá -- tel -- ství a jas.
}

textC = \lyricmode {
Ze --
mě dý -- chá ka -- ždým dnem vol -- ně -- ji,
ka -- ždým dnem víc ště -- stí mů -- žeš brát,
nik -- de v~svě -- tě li -- dé ne -- u -- mě -- jí
ja -- ko zde tak moc -- ně mi -- lo -- vat.
Smích dě -- tí a zpěv slun -- né -- ho mlá -- dí
kdo by za -- chtěl zlo -- bou u -- ml -- čet,
sra -- žen bu -- de lid -- mi, kte -- ří rá -- di
ži -- vot da -- jí za svo -- bod -- ný svět.
}

accompaniment = \chordmode {
\partial 4 s4
\repeat volta 3 {
  b1:7 e1:m b1:7 e2:m d2:7
  d1:7 g1 e1:m b1:7
  b1:7 e1:m b1:7 e2:m d2:7
  d1:7 g1 c1 b2:7 d2:7
  g4. c8 c2 g1 c4. e8 e2 a1:m
  a2:m d2:7 g1 g2 d2:7 g1
  d1:7 g1 g2 d2:7
}
\alternative {
  { g1 }
  { g1 }
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
        \midi { \tempo 4=100 }
}
