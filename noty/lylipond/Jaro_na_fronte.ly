\version "2.24.0"
\header {
        title = "Jaro na frontě"
        composer = "Vasilij Solovjov-Sedoj"
        poet = "Alexej Faťjanov, český text Josef Urban"
}

skryteTempo = { \once \override Score.MetronomeMark.stencil = ##f }

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key bes \minor \tempo "Mírně" 4=88
r1 | r2 r4 f,8^\markup \small "SOLO" f |
\repeat volta 2 {
  \time 4/4 \skryteTempo \tempo 4=88
  des'2. c8 bes | c2. bes8 a | bes2 aes4 ges | f1 \breathe |
  ees'2.^\markup \small "SBOR" c4 | des2 bes4 des | ees4( ges) f ees | bes2 aes |
  bes2 ees, | f2 ees4( f) | bes1~ | bes4 f' ges ees |
  \time 2/4 \tempo "Hybněji" 4=108
  f8. des16 des8 c | des8 des ees c | des8. bes16 bes8 a | bes8 aes ges f |
  bes8. ges16 ges8 f | ees8 ees f ges | aes8. f16 f8 ees | des8 des ees ees |
  ges8. ees16 ees8 des | c8 c des ees | f8 f' ees des | c2~ | c4 f,8^\markup \small "SOLO" f |
}
\time 4/4 \skryteTempo \tempo 4=88
des'2.^\markup \small "SBOR" f8. des16 | ees2. des8. c16 | bes2 aes4 ges | f1 |
ees'2. c4 | des2 bes4 des | ees4( ges) f ees | bes2. f8^\markup \small "SOLO" f |
des'2. c8 bes | c2. bes8 a | bes2 aes4 ges | f1 |
ees'2. c4 | des2 bes4 des | ees4( ges) f ees |
<bes bes'>1~\pp | q1~ | q1~ | q1~ | q1~ | q4 r r2 \bar "|."
}

text = \lyricmode {
Sla -- vi -- čí tlu -- kot zní, ne -- lze nám při něm spát,
ptá -- čku náš, měl bys nám kli -- du přát,
měl bys nám kli -- du přát.
I k~fron -- tě krá -- čet ja -- ro zříš
a chlap -- cům spát se ne -- chce již,
ne pro -- to, vý -- bu -- chy že hřmí,
jen pta -- čí pí -- seň že tu zní,
i pro -- střed hrůz a vál -- ky zlé
tu pě -- je sla -- vík pís -- ně své.
Sla -- vi --
čí tlu -- kot zní, ne -- lze nám při něm spát,
ptá -- čku náš, měl bys nám kli -- du přát.
Sla -- vi -- čí tlu -- kot zní, ne -- lze nám při něm spát,
ptá -- čku náš, měl bys nám kli -- du přát.
}

accompaniment = \chordmode {
s1 | s1 |
\repeat volta 2 {
  bes1:m | f1 | ges1 | f1:7 |
  ees2.:m f4:7 | bes1:m | ees1:m | bes2:m bes2:7 |
  ees1:m | f1:7 | bes1:m | bes2:m ees2:m |
  bes2:m | bes4:m f4:7 | bes2:m | bes4:m bes4:7 |
  ees2:m | aes2:7 | des2 | bes2:m |
  f2:7 | f2:7 | bes2:m | f2:7 | f2:7 |
}
bes1:m | f1:7 | ges1 | bes1:m |
ees2.:m f4 | bes1:m | ees2:m f2:7 | bes1:m |
bes1:m | f1:7 | ges1 | bes1:m |
ees2.:m f4 | bes1:m | ees1:m |
bes1:m | bes1:m | bes1:m | bes1:m | bes1:m | bes4:m s2. |
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
