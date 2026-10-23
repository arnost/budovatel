\version "2.24.0"
\header {
        title = "Ktož jsú boží bojovníci"
}

melody = \relative c'' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
\repeat volta 2 {
c4 d d2 d d4 c c2 e \bar "|"
e4 c2 c4 c b2 a\fermata \bar "|"
a4 c c2 a a4 f f2 a \bar "|"
a4 d,2 d4 d d2 c1\fermata \bar "|"
f2 a4 a c2 a4 a \bar "" f2 d4 e f2 d1\fermata
}
a'2^"R." c4 e d2 c f e d d a4 a c2 b8[( c]) a1\fermata \bar "|"
a4 c2 c4 a2 a4 f2 f4 d2 \bar "" d4 f2 d4 e2 f4 d1\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ktož jsú bo -- ží bo -- jo -- vní -- ci
a zá -- ko -- na je -- ho,
pro -- stež od Bo -- ha po -- mo -- ci
a ú -- faj -- te v~ně -- ho,
že ko -- ne -- čně vždy -- cky s~ním sví -- tě -- zí -- te!
Tenť pán ve -- líť se ne -- bá -- ti
zá -- hub -- cí tě -- les -- ných,
ve -- líť i ži -- vot slo -- ži -- ti
pro lá -- sku svých bliž -- ních.
}

textb = \lyricmode {
Kri -- stusť vám za ško -- dy sto -- jí,
sto -- krát viec sli -- bu -- je;
pak -- li kto proň ži -- vot slo -- ží,
věč -- ný mie -- ti bu -- de;
bla -- ze kaž -- dé -- mu, ktož na prav -- dě sen -- de!
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats \new Voice { \melody }
        \midi { \tempo 2=60 }
}
