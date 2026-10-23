\version "2.24.0"
\header {
        title = "Partyzánská"
        composer = "Jan Hanuš"
        poet = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Volným pochodem" 4=96
\repeat volta 3 {
d4->^"SOLO" f8. g16 a4-> d, | d8. d16 f8. g16 a4-> d, |
\phrasingSlurDotted f8.\( f16 bes8.\) d16 f4-> d |
\phrasingSlurDotted c4\( d8\) c a2 |
f'4^"SBOR" e8. c16 a4 a | g8[ bes] d8. cis16 a4-> gis\fermata |
a4 d,8. e16 f4 d |
}
\alternative {
{ d'4 c d2 | }
{ d4 c8. c16 d2 | }
{ d8 d c4 d2 \bar "|." }
}
}

text = \lyricmode {
V~sú -- mra -- ku noč -- nom blý -- ska -- jú sa zbra -- ne,
nás __ _ po -- vel vo -- lá na di -- vý boj!
Tam, kde krv te -- plá, ne -- vin -- ná te -- čie,
zdat -- ných sa chlap -- cov že -- nie roj.
pra -- o -- tec -- tva.
na -- šej vla -- sti.
}

accompaniment =\chordmode {
\repeat volta 3 {
d1:m d:m bes c2:7 f4 a:7
d2.:m f4 g2:m d4:m e d1:m
}
\alternative {
{ d4:m a:m d2:m }
{ d4:m a:m d2:m }
{ d4:m a:m d2:m }
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
        \midi { \tempo 4=96 }
}
