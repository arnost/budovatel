\version "2.24.0"
\header {
        title = "Ať tyran má své pochopy"
        composer = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Rázně" 4=100
d4 b'8 a | g4 fis | a4. g8 | e4 r | fis4 fis8 g | a4 b | a2 | g4 r |
d4 b'8 a | g4 fis | a4. g8 | e4 r | fis4 fis8 g | a4 b | a2 | g4 r |
d4 \tuplet 3/2 { d8 d d } | dis4 dis | e e | e r | e \tuplet 3/2 { e8 e e } | fis4 g | a2 | a2 |
\repeat volta 2 {
c4 c8 c | b4 a | d4. b8 | g4 r | c4 b8 a | g4 fis | a2 |
}
\alternative {
{ b2 }
{ g4 r }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ať ty -- ran má své po -- cho -- py,
by klid -- ně mo -- hl spá -- ti,
přec strach má z~na -- ší po -- to -- py,
že trůn mu jed -- nou zvrá -- tí,
Ať ti -- sí -- ce špal -- ků če -- ká již,
ať ti -- sí -- ce tře -- ba ka -- tů,
náš ru -- dý pra -- por vla -- je výš,
a my jsme pro od -- pla -- tu. "-tu."
}

accompaniment = \chordmode {
g2 | g2 | c2 | c2 | d2 | d2 | d2 | g2 |
g2 | g2 | c2 | c2 | d2 | d2 | d2 | g2 |
g2 | b2:7 | e2:m | e2:m | a2:m | a4:m e4:m | a2:m | a2:m |
\repeat volta 2 {
d2:7 | d2:7 | g2 | g2 | d2:7 | d2:7 | d2:7 |
}
\alternative {
{ g2 }
{ g2 }
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
