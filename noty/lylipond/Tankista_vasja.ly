\version "2.24.0"
\header {
        title = "Tankista Vasja"
        composer = "T. Ratkowski"
        poet = "R. Stiller, český text Erich Sojka"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key e \minor \tempo "Mírně" 4=104
e2 b4 | d8 c b a g a | b2. | e,2. |
a4. b8 c b | d4. c8 b a | b2.~ | b2 r4 |
e2 b4 | d8 c b a g a | b2.~ | b2. |
a4. g8 fis e | a4. g8 fis e | ais4 b2~ | b2 r4 |
g'2 d4 | fis8 e d c b c | d2. | g,2. |
a4. b8 c b | d4. c8 b a | b2.~ | b2 r4 |
e2 b4 | d8 c b a g a | b2.~ | b2. |
a4. g8 fis e | a4. g8 fis e | ais4 b2~ | b2. |
\time 2/4
\repeat volta 2 {
b,4^"sbor" c' | b8 a g fis | g8 e~ e4~ | e2 |
d4 e' | d8. c16 b8 a | b2~ | b2 |
}
\alternative {
  { g8 a b c | b8 c d e | b4 g'~ | g2 | fis8 cis d e | g4 fis | g2 | fis2 }
  { e8 a, b c | d8 e eis fis | b,4 g'~ | g2 | fis8 cis dis e | fis4 g | e2 | e4 r \bar "|." }
}
}

text = \lyricmode {
Znal jsem kdy -- si Vas -- ju, jez -- dil v~tan -- ku;
zná -- most na -- še zá -- klad pev -- ný má;
ú -- to -- kem a zte -- čí za -- čí -- ná,
v~dý -- mu fron -- ty v~tý -- dnech be -- ze spán -- ku.
Vas -- ja ru -- du ko -- pal pod U -- ra -- lem,
já zas čer -- ný dé -- mant v~Kar -- vin -- né,
do -- ly, to by -- lo to je -- di -- né,
o čem spo -- lu sní -- va -- li jsme stá -- le.
Vas -- jo, Vas -- jo, my už na -- vždy bra -- tři
jsme a zů -- sta -- nem.
A za ná -- mi br -- zy půj -- de kaž -- dý,
kdo ctí prá -- ci a svou zem. __ _
A za ná -- mi br -- zy půj -- de kaž -- dý,
kdo ctí prá -- ci a svou zem. __ _
}

accompaniment = \chordmode {
e2.:m | a2.:m | b2.:7 | e2.:m |
a2.:m | d2.:7 | g2. | b2.:7 |
e2.:m | a2.:m | b2.:7 | b2.:7 |
a2.:m | b2.:7 | b2.:7 | b2.:7 |
g2. | d2. | g2. | g2. |
a2.:m | d2.:7 | g2. | b2.:7 |
e2.:m | a2.:m | b2.:7 | b2.:7 |
a2.:m | b2.:7 | b2.:7 | b2.:7 |
\repeat volta 2 {
e4:m a:m | b2:7 | e2:m | e2:m |
g2 | d2:7 | g2 | b2:7 |
}
\alternative {
  { c2 | g2 | e2:m | e2:m | fis2:7 | fis2:7 | b2:7 | b2:7 }
  { e4.:m a8:m | d2:7 | g4 e:m | e2:m | fis2:7 | b2:7 | e2:m | e2:m }
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
        \midi { \tempo 4=104 }
}
