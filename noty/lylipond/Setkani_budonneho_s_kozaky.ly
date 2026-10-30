\version "2.24.0"
\header {
        title = "Setkání Buďonného s kozáky"
        composer = "Vasilij Solovjov-Sedoj"
        poet = "A. Čurkin, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \minor \tempo "Živě" 4=120
d4 e8 fis | g[( d]) bes' a | g2 | d'2 |
d4 bes | c8[( bes]) c4 | g2~ | g4 r |
d4 e8 fis | g[( d]) bes' a | g2 | d'2 |
d4 bes | c8[( bes]) c4 | bes2~ | bes4 r |
f'8 r r f | f4 es8 d | c4 f~ | f es |
d4. d8 | d4 c8 bes | a4( d~ | d) c |
b4 a8 b | c[( g]) es' d | c2 | es2 |
d4 bes | c8[( bes]) c4 | g2~ | g4 r \bar "|."
}

text = \lyricmode {
K~rod -- né -- mu Do -- nu jel z~dál -- ky
sou -- druh Bu -- ďon -- nyj,
ces -- tou se po -- tkal s~ko -- zá -- ky
v~ši -- rém ú -- do -- lí.
„Hej, rod -- ní mo -- ji ko -- zá -- ci,
v~bo -- ji chrab -- ří ju -- ná -- ci“,
„ví -- tán buď náš or -- le step -- ní,
zdráv buď Bu -- ďon -- nyj!“
}

accompaniment = \chordmode {
d2:7 g4:m d:7 g2:m g:m
c2:7 f g:m g:m
d2:7 g4:m d:7 g2:m g:m
c2:7 f bes bes
bes2 bes f fis:dim7
g2:m g:m d d
g2:7 c4:m g:7 c2:m c:m
g2:m d:7 g:m g:m
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
        \midi { \tempo 4=120 }
}
