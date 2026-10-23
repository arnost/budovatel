\version "2.24.0"
\header {
        title = "Hej, Ivane, hej"
        composer = "Míla Kraus, úprava Josef Stanislav"
        poet = "Karel Jiráček"
}

melody =  \relative c'' {
        \clef treble
        \time 6/8 \key g \major \tempo "Mírně rychle" 4.=80
d4. b8 d b | g2. | d'4. b8 d b | g2. |
e8 fis g a4 b8 | a4 fis8 a4. | c4 c8 c4 c8 | c4 c8 c4. |
a8 b c b a gis | a4 a8 a4. | a8 b c b a gis | a4 a8 a4. |
e8 e e e4 e8 | e e e e4 e8 | e e e e4 e8 \bar "||"
\tempo "Rázně"
g4. fis4 g8 | a4. e4 a8 | b4. ais4 b8 | a!4. a4. | b4. ais4 b8 | g2. | g4. r4 r8 |
g4.^\markup { \italic "dolce" } d4 g8 | a4. d,4 a'8 | b4. ais4 b8 | a!4. a4. | b4. ais4 b8 | g2. | g4. r4 r8 |
e8 r e e4 r8 | e8 r e e4 r8 | e8 fis g a g fis | b4 b8 b r4 |
e,4. g4 fis8 | e4. dis4 b8 | e4. g4 fis8 | e4. dis4 b8_\markup { \italic "D.C. e poi la Coda" } \bar "||"
\break
\mark \markup { \bold "Coda" }
\tempo "Pochodové tempo"
g'8 e g a4 e8 | g e g a4 e8 | g e g b4 g8 | a g a c4 a8 |
e8 e e e4 e8 | e e e e4 e8 | e e e e4 e8 | c'4. r4 r8 |
b8 a g b a g | \time 9/8 b a g d'4.( dis) | \time 6/8 e8 d c d c b | c b a g r4 \bar "|."
}

text = \lyricmode {
Hej, I -- va -- ne, hej! Hej, I -- va -- ne, hej!
Slun -- ko již vsta -- lo, za -- přa -- hej. Cha cha cha cha cha cha cha,
ne -- ní jen ko -- ní -- ka, ne -- ní, aj, rol -- ní -- ci trak -- to -- ry za -- přa -- haj',
ta -- ra -- ta -- tá -- ta ta -- ra -- ta -- tá -- ta ta -- ra -- ta -- tá -- ta.
Děl -- ní -- ci z~to -- vá -- ren, bra -- tři, nám da -- li že -- lez -- né, o -- ře,
naf -- tu zas děl -- ní -- ci, bra -- tři, po -- sla -- li, ji -- nak se, o -- ře.
Ši -- rá step, ši -- rá step, dří -- ve než vy -- jde den, vy -- je -- dem!
Spo -- leč -- ně na po -- le, za mo -- je, za tvo -- je.
Hlu -- bo -- kou bráz -- du trak -- to -- ry ry -- jí, do tem -- pa pí -- seň mo -- to -- ry bi -- jí.
Ta -- ra -- ta -- tá -- ta ta -- ra -- ta -- tá -- ta ta -- ra -- ta -- tá -- ta. Vpřed!
Za no -- vý, svo -- bod -- ný, krás -- něj -- ší svět!
Za no -- vý, svo -- bod -- ný, krás -- něj -- ší svět!
}

accompaniment = \chordmode {
g2. | c | g | c |
c2. | d | d | d |
d2. | a4.:m d | d8 a4:m a4.:m | a4.:m d |
a2.:m | a:m | a:m |
g2. | a:m | g | c | g | c | g |
g2. | a:m | g | c | g | a:m | e:m |
a2.:m | a:m | a4.:m d | g2. |
e2.:m | e4.:m b | e2.:m | e4.:m b |
c4. a:m | c a:m | c b:m | b4:m d8 c4. |
a2.:m | a:m | a:m | a:m |
g2. | g4. g b | a:m d/a | a8:m d4:7 g4. |
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
        \midi { \tempo 4.=80 }
}
