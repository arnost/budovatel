\version "2.24.0"
\header {
        title = "Pochod"
        composer = "S. V. Kljačko"
        poet = "Josef Urban"
}

melody = \relative c'' {
        \clef treble
        \time 2/4 \key a \major \tempo "Pochodovým tempem" 4=112
a8\f r a r | a e4. | a8 r a r | a e4 \breathe e8 |
\repeat volta 2 {
a8. a16 a8 a | cis4 a8 e | a8. e16 a8 cis | b4 r8 e, |
b'8. e,16 b'8 cis | d4 b8 gis | e e fis gis | a4 r8 cis |
a8 r a r | a e4. | a8 r a r |
}
\alternative {
{ a8 e4 \breathe e8 }
{ a8 a4 r8 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ráz, dva, le -- vá! Ráz, dva, le -- vá! My
rá -- zně jde -- me vpřed, pě -- jem pí -- sně ve -- se -- lé, tož
s~ná -- mi pojď -- te, vše -- chny vy dě -- ti ne -- smě -- lé! Ej!
Ráz, dva, le -- vá! Ráz, dva, le -- vá! Pro le -- vá!
}

accompaniment = \chordmode {
a2 a a a
\repeat volta 2 {
a2 a a e
e2:7 e:7 e:7 a
a2 a a
}
\alternative {
{ a2 }
{ a2 }
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
