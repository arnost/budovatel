\version "2.24.0"
\header {
        title = "Mladá rota"
        composer = "B. Terentěv"
        poet = "M. Ruděrman, český text M. Kubr"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Rychle, prudce" 4=132
\repeat volta 4 {
\key d \major
d8 e fis g | a4 fis | g8[( e]) a4~ | a8 r8 r4 |
e4. fis8 | g e g b | a2~ | a4. r8 |
d,8 e fis g | a4 d | b e,~ | e8 d'4 b8 |
a4. fis8 | e8[( d]) e4 | a2~ | a8 r8 r4 |
d,8 e fis g | a4 fis | g8[( e]) a4~ | a8 r8 r4 |
r8 e4 fis8 | g b a e | fis2~ | fis8 r8 r4 |
r4 b8 c | b a g fis | e4( g | b) e | r8 d4 b8 | a fis e a | d,4 r4 |
r4^"Sbor" b'8 c | b a g fis | e'2~ | e4 e | r8 d4 b8 | a fis e a | d4 r4 |
r4 f4 \bar "||"
\key bes \major
d4^"Refrén" d | f f | g4. c,8 | a4 f8 r8 |
bes4 d | f d | c bes8[( c]) | bes4~ bes8 r8 \bar "||"
\key d \major
a8 a d a | b g a fis | e fis g8. e16 | a8. a16 a4 |
d8 d cis b | d a g fis | e4 b' | a8 g fis a |
}
\alternative {
{ d4 r4 }
{ d2~ | d2~ | d2~ | d2~ | d2~ | d2~ | d4 r4 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Mám to ra -- dost ze ži -- vo -- ta: __
chlap -- ci ke mně při -- běh -- nou, __
že prý ne -- má na -- še ro -- ta __ žád -- né
bo -- je za __ se -- bou. __
My jsme všich -- ni, jak jsme ta -- dy, __
poz -- dě u -- vi -- dě -- li svět, __
my ne -- má -- me zla -- té řá -- dy,
a vy jste jich do -- stal pět!
My ne -- má -- me zla -- té řá -- dy,
a vy jste jich do -- stal pět! Ej!
Je to ra -- dost ze ži -- vo -- ta,
mlá -- dež pl -- nou oh -- ně __ mít! __
Na -- še sil -- ná mla -- dá ro -- ta chrá -- ní vlast jak pev -- ný štít!
Na -- še sil -- ná mla -- dá ro -- ta chrá -- ní vlast jak pev -- ný
štít! štít! __
}

accompaniment = \chordmode {
\repeat volta 4 {
d4 g | d2 | e4:m a | e4:m a |
e4:m a | e4:m a:7 | d4 a:11 | d4 a:11 |
d4 g | d2 | g4 e:m | g2 |
d2 | e2:7 | a2 | a2:7 |
d4 g | d2 | e4:m a | e4:m a |
e4:m a | e4:m a | d2 | d4 fis:7 |
b2 | s2 | e2:m | e2:m | b2:m | d4 a | d2 |
s2 | s2 | e2:m | e2:m | b2:m | d4 a | d2 |
s4 f4:7 |
bes2 | f2 | es2 | f2 |
bes2 | bes2 | f2 | bes2 |
d2 | g4 d | e2:m7 | a2 |
g2 | d2 | e2:m | a2 |
}
\alternative {
{ d2 }
{ d2 | e2:m | b2:m | e4:m a | d2 | s2 | d2 }
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
        \midi { \tempo 4=132 }
}
