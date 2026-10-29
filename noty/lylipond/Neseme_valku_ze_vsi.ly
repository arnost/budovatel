\version "2.24.0"
\header {
        title = "Neseme válku ze vsi"
        composer = "Ludvík Podéšť"
        poet = "Vlastimil Pantůček"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Volně" 4=80
\repeat volta 2 {
d8\p d b c | d b4.\fermata | d8 d b c | d b4.\fermata |
c8 a\fermata b g\fermata | a d,4.\fermata | d8 d' b a | b g4.\fermata |
}
\repeat volta 2 {
e8\mf e g e | fis4 fis8 r | b b g e | fis fis4 r8 |
e8 fis g a | fis4 d | e8\< fis g a\! |
}
\alternative {
{ fis4\> b,8\! r }
{ b'8\< b4\! r8 }
}
\tempo "Táhle, volně"
\repeat volta 2 {
d8\f d b c | d b4.\fermata | d8 d b c | d b4.\fermata |
c8 a\fermata b g\fermata | a d,4.\fermata | d8 d' b a | b g4.\fermata |
}
}

text = \lyricmode {
\set stanza = "1."
Pod před -- jar -- ním ne -- bem ze vsi vál -- ku ne -- sem,
smrt -- ko kru -- tá, te -- be už ne -- bo -- jí -- me se.
\set stanza = "3."
Tvé ne -- či -- sté plé -- mě kal -- ná vo -- da ne -- se,
už do na -- ší ze -- mě ni -- kdy ne -- vra -- cej se.
\skip 8 \skip 4
\set stanza = "5."
Za mír ván -- ků noč -- ních, za vo -- ní -- ci ji -- tra,
zvo -- ny vel -- ko -- noč -- ní bu -- dou zvo -- nit zí -- tra.
}

textb = \lyricmode {
\set stanza = "2."
Tvá sla -- mě -- ná hla -- va už nás ne -- po -- stra -- ší,
jar -- ní ří -- čka dra -- vá už tě pryč od -- ná -- ší.
\set stanza = "4."
Smrt -- ka ze vsi plo -- ve a s~ní sta -- ré sme -- tí,
do vsi ja -- ro no -- vé s~vla -- što -- vka -- mi
\skip 4 \skip 8
le -- tí!
\set stanza = "6."
Má -- ji, ví -- tá -- me tě, za -- nes lá -- sku všu -- de,
mír na ce -- lém svě -- tě pro nás na -- vždy bu -- de.
}

accompaniment = \chordmode {
\repeat volta 2 {
g2 g g g a4:m g d2:7 d:7 g
}
\repeat volta 2 {
e2:m b:7 e:m b:7 c d c
}
\alternative {
{ b2:7 }
{ b2:7 }
}
\repeat volta 2 {
g2 g g g a4:m g d2:7 d:7 g
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
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=80 }
}
