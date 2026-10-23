\version "2.24.0"
\header {
        title = "Pochod desetitunařů"
        composer = "Jan Kapr"
        poet = "Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \major \tempo 4=112
\partial 4 e4 |
\repeat volta 2 {
a4 a b a8 b | c4 a2 c4 | e,4 e b'8 a gis4 | a2 r4 a | d,4 d a' g8 f |
e4 g c b | a4 a2 b8 c | b2. r4 |
c4 g2 f8 e | a2 f4 g8 a | b4 b a b | g4 r r8 g a b |
c4 c8 b d4 c8 b | a8 g a c g4 e8 r | a4 a a8 g f e | d4 a' g2 |
c4 g2 f8 e | a4 f( f8) f g a | b2 a4 b | gis4 r r2 |
a4 a8 r16 g f4. e8 | g4 f e d | e8 d e f g e4. | f8 e f g a fis4. | g4 g b8 a4. |
}
\alternative {
{ \fixed c' { g4 d' c' r | R1 | r2. e4 } }
{ \fixed c' { g4 d' c' r } \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Je u -- hlí ná -- ro -- da si -- lou, je v~u -- hlí svě -- to -- vý mír
a pro -- to pev -- ně -- ji sví -- rá ky -- lof ha -- víř bo -- ha -- týr.
Na víc dá -- me stá -- tu kaž -- dý mě -- síc de -- set tun.
Pro ště -- stí, pro slav -- né ví -- těz -- ství pro -- le -- ta -- ri -- á -- tu,
u -- hlím pro -- ko -- pem se k~na -- šim snům.
Hří -- má z~na -- šich do -- lů ti -- sí -- ců sbí -- je -- ček hřmot.
Třes -- te se, vlád -- ci mo -- no -- po -- lů!
Od O -- stra -- vy ha -- víř tu -- ny u -- hlí na -- víc ko -- pe pro mír,
pro ži -- vot. Je pro ži -- vot.
}

accompaniment = \chordmode {
\partial 4 e4:7 |
\repeat volta 2 {
a2:m e:7 | a2.:m f4 | e2 e:7 | a1:m | d2:m g:7 |
c2 e:7 | f2 d:m | e2.:7 g4:7 |
c1 | a1:7 | b1:7 | g1:7 |
c2 e | f4 dis:dim7 c c:aug | a1:7 | d2:m g:7 |
c2 a:7 | d1:m | b1:7 | e2 e:7 |
a1:7 | d1:m | c2 c8 cis4.:dim7 | d2:m d8:m dis4.:dim7 | e2:m f8:7 fis4.:dim7 |
}
\alternative {
{ g2:7 c | g2 aes:7 | f2 e:7 }
{ g2:7 c }
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
