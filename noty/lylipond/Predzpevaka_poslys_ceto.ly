\version "2.24.0"
\header {
        title = "Předzpěváka poslyš, četo"
        composer = "Valentin Kručinin"
        poet = "M. Borodovskij, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \major \tempo "Volnější pochodové tempo" 4=100
b4 e, e'4. d8 | a4. e8 a8[( b]) c4 | d4 d d8[( c]) b[( a]) | g4 d' b( c8) d |
\repeat volta 2 {
e4^"Refrén" c8 e d c e c | d4 b8 d c b d b | a4 e' d c |
}
\alternative {
{ g'8 r a4( g f) }
{ g4.( d8 g) r r4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Před -- zpě -- vá -- ka po -- slyš, če -- to! Od -- dych -- nem si, __ blíz -- ko je __ to.
Bez kon -- ce dlou -- há ces -- ta, ná -- vr -- ší, bro -- dy mě -- sta... Drž -- me pev -- ný
krok! E! __ krok! __
}

accompaniment = \chordmode {
e2 a:m | a1:m | d4 g d2 | g4 d:7 g2 |
\repeat volta 2 {
c4 a2.:m | g1 | a2:m d4:7 a:m |
}
\alternative {
{ g2 e4:m g:7 }
{ g4. d8 g2 }
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
        \midi { \tempo 4=100 }
}
