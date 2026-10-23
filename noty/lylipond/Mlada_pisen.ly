\version "2.24.0"
\header {
        title = "Mladá píseň"
        composer = "Jan Kapr"
        poet = "Anna Hostomská"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \major \tempo "Svižně" 4=132
\partial 2 e4 f |
\repeat volta 2 {
g2 g4 e | g2 g4 e | f4 g2. ~ | g4 r c e | d2 c4 g | e2 f4 g | f2 f ~ | f4 r d e |
f4 r f d | f4 r f d | e4 f r2 | r2 g4 a | b b r c | d1 | d4 c a g ~ | g4 r e f |
g2 g4 e | g2 g4 e | f4 g2. ~ | g4 r c d | e2 e4 c | e2 e4 c | a1 ~ | a4 r a b |
c4 r c a | c4 a2 a4 | g2 g4 f | e2 g4 a | f4 f2 e4 | d2 f4 g | e2 f | g2 a4 b |
c2 c4 a | c4 a2 a4 | g4 c2 d4 | e2 d4 e | f1 ~ | f4 r a,4 b |
}
\alternative {
{ c1 ~ | c4 r r2 | R1*2 | r2 e,4 f | }
{ c'1 ~ | c4 r r2 | R1*2 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Dej se k~nám, kdo jsi rád, že jsi mla -- dý, __
do -- kud pták v~srd -- ci tvém ja -- ře zpí -- vá, __
den co den, rok co rok na -- še řa -- dy
rych -- le ros -- tou, jak tkáň __ věč -- ně ži -- vá. __
Kdo jde sám, spad -- ne dřív než -- li vzle -- tí, __
jed -- not -- ni doj -- dem dřív mno -- hem dál, __
od -- pad -- ne ja -- ko sme -- tí, kdo sám stra -- nou stál,
kdo se ště -- tí jak páv, ať jen kle -- je víc,
ať je zdráv, kdo se ne -- dá, ať zve -- dá svou líc
slun -- ci vstříc, __ slun -- ci vstříc! __
Na -- še blíž! __
}

accompaniment = \chordmode {
\partial 2 s2
\repeat volta 2 {
c1 c c c c a:7 d:m d:m
g1:7 bes2:7 d:m a d:m g1 g g c c
c1 c c c c c f f
f1:7 b:7 c2. e4:7 a1 d:m d2:m g c d:m c:7 f
b1 b c c2. a4:7 d1:m d2:m g:7
}
\alternative {
{ c1 c s1*3 }
{ c1 c s1*2 }
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
