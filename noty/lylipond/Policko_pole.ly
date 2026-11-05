\version "2.24.0"
\header {
        title = "Políčko, pole"
        composer = "Lev Knipper"
        poet = "Viktor Gusev, český text Josef Urban"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key f \minor \tempo 4=96
R1 | r2 r4 f'4 |
\set Score.startRepeatBarType = "||"
\set Score.endRepeatBarType = "||"
\repeat volta 2 {
\mark \markup { \musicglyph "scripts.segno" }
des'2 bes4 des'4 | c'2 as4 f4 | des'8 c'8 bes8 as8 bes4 f'4 | c'2 f2 |
bes4 as8 ges8 f8 es8 f8 ges8 | f4 ( c'4-> a4-> ) f4 | bes8 bes8 as8 ges8 f8 es8 f8 ges8 | f4 c'2 \breathe f'4 |
des'2 bes4 des'4 | c'2 as4 f4 | des'8 c'8 bes8 as8 bes4 f'4 | c'2 f2 |
bes4 as8 ges8 f8 es8 f8 ges8 | f4 ( c'4-> a4-> ) f4 | bes8 bes8 as8 ges8 f8 es8 f8 ges8 | f4 c'2 \breathe f'4 |
des'2^\markup { \small "(Solo + sbor)" } bes4 des'4 | c'2 as4 f4 | des'8 c'8 bes8 as8 bes4 f'4 | c'2 f2 |
bes4 as8 ges8 f8 es8 f8 ges8 | f4 ( c'4-> a4-> ) f4 | bes8 bes8 as8 ges8 f8 es8 f8 ges8 |
\alternative {
  \volta 1 { \once \override Score.VoltaBracket.text = "1.–9." f4 c'2 \breathe f'4 \mark \markup { \musicglyph "scripts.segno" } }
  \volta 2 { \once \override Score.VoltaBracket.text = "10." f4 f2 r4 }
}
}
\bar "|."
}

text = \lyricmode {
Ech, po -- lí -- čko, ech, po -- le,
po -- lí -- čko, ty po -- le ši -- ré!
Tam je -- dou hr -- di -- no -- vé k~slá -- vě,
voj -- sko ru -- dé, hr -- di -- no -- vé sla -- vní. Ech!
Dí -- ven -- ky plá -- čí dnes,
dív -- ky na -- še hoř -- ce plá -- čí,
vždyť mi -- lý mu -- sel od -- jet v~dá -- li,
ru -- dý vo -- jín, hr -- di -- na to sla -- vný. Ech!
Dív -- ky se dí -- va -- jí
ces -- ta na -- še jak se tá -- hne,
tá -- hne se ce -- sta na -- še v~dá -- li,
ve -- se -- le se voj -- sko po -- ní
va -- lí. Ech!
sla -- vní.
}

accompaniment = \chordmode {
s1 | s1 |
\repeat volta 2 {
bes1:m | f1:m | bes1:m | f1:m | es1:m | f1 | es1:m | f1 |
bes1:m | f1:m | bes1:m | f1:m | es1:m | f1 | es1:m | f1 |
bes1:m | f1:m | bes1:m | f1:m | es1:m | f1 | es1:m |
\alternative {
  \volta 1 { f1 }
  \volta 2 { f1 }
}
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
