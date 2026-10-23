\version "2.24.0"
\header {
        title = "Ostrava – SMBS"
        composer = "Jan Tausinger"
        poet = "Bohumír Fron"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key bes \major \tempo "Pochodem" 4=112
\repeat volta 3 {
\time 4/4
g'4 d g a | f2 ~ f8 r g8. a16 | bes4 f bes c | a2. f4 | d'4 d d c | bes4 a g r |
a4 e g fis | a2. ~ a8 r \bar "||"
\time 2/4
bes8 bes4. | g8 g4 f8 | g8. f16 es8 d | f2 | d8 f4 f8 | bes8 f4 f8 | a8 bes c4 | bes4 r |
bes8 bes4. | g8 g4 f8 | g8. f16 g8 a | bes4 r | a8 c4 c8 | d4 c8 c | bes8 a g4 | f4 r |
g2 | bes4 a | g4 a | fis2 | bes2 | d4 c | bes4 c | a4 f |
d'8 d4. | c8 c4 bes8 | c8. bes16 a8 g | f4 d8 es | f4 d' | bes4 c | bes2 ~ | bes8 r f4 |
d'8 d4. | c8 c4 bes8 | c8. bes16 a8 g | f4 d8 es | f4 d' | bes4 c |
}
\alternative {
{ bes4 r | R2 \time 4/4 }
{ \fixed c' { \time 4/4 bes4^"Coda" r r \xNote { bes8 bes ~ | bes4 ~ } bes2 \xNote { bes8 bes ~ | bes4. } r8 r4 \xNote { bes8 bes ~ | bes4 } r r2 } \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Nad hla -- vou vla -- je __ mo -- drá vlaj -- ka sva -- zác -- ká,
když do ú -- to -- ku zno -- vu jde če -- ta ú -- der -- ná. __
U -- rá! sva -- zá -- ci, je to vel -- ká věc,
za -- ho -- ří v~pra -- vý čas vy -- so -- ká pec!
U -- rá! za -- ho -- ří pla -- men mí -- ro -- vý,
na -- pí -- šem' sou -- dru -- hu Gott -- wal -- do -- vi:
ú -- kol vy -- ko -- ná -- me, kte -- rý jste nám svě -- řil!
Hej! hu -- rá, hu -- rá! My pos -- ta -- ví -- me svět,
kde by člo -- věk šťast -- ně žil! __
Hej! hu -- rá, hu -- rá! My pos -- ta -- ví -- me zem,
kde by člo -- věk šťast -- ně žil!
žil! Hu -- rá! __ hu -- rá! __ hu -- rá! __
}

accompaniment = \chordmode {
\repeat volta 3 {
g2:m c:7 | f2 f:7 | bes4 f bes c:7 | f2. f4:7 | bes2 d:7 | g4:m d:7 g2:m |
a1:7 | d2. f4:7 |
bes2 | es4. bes8 | es4 f:7 | bes2 | bes2 | bes2 | f2:7 | bes2 |
bes2 | es4. bes8 | es4 f:7 | bes2 | f2:7 | bes4 f | c2:7 | f2 |
es2 | es2 | a2:7 | d2 | g2:m | g2:m | c2:7 | f4 f:7 |
bes2 | d4.:7 g8:m | c4:m c:7 | f2 | f4 g:m7 | c4:7 f:7 | bes2 | bes4 f:7 |
bes2 | d4.:7 g8:m | c4:m c:7 | f4. f8:7 | f4 g:m7 | c4:m7 f:7 |
}
\alternative {
{ bes2 | d2:7 }
{ bes1 | bes1 | bes1 | bes1 }
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
        \midi { \tempo 4=112 }
}
