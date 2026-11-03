\version "2.24.0"
\header {
        title = "Letecká"
        composer = "Vasilij Solovjov-Sedoj"
        poet = "S. Fogelson, český text Josef Urban"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Allegretto" 4=96
r8 g c, d |
\repeat volta 3 {
e8. e16 e4 | f8. f16 f4 | g8. g16 g4 |
r8 g a c | b g a c | b g a e | g8. g16 g4 |
r8 a b c | d8. d16 c8 b | a e a b | c8. c16 b8 a |
g8 g a c | b g a e | g8. g16 a8 b | c4 r | r4 e, |
g2~ | g4 f8. g16 | f4 e | r8 a c e | e8. d16 d8 r |
c8. b16 b4 | d8. c16 c8 b | a4 e | g2~ | g4 f8. g16 |
f4 e | r8 a c e | e8. d16 d4 | r8 e c b | a2~ |
a8 r a4 | a8 b, d f | a8. a16 g8 f | e16( f) g4 a8 |
g8 r c4 | b8 b, dis fis | c'8 c b a | gis4 a |
b8 r e,4 | g2~ | g4 f8. g16 | f4 e | r8 a c e |
e8. d16 d8 r | r8 e c b | a4 r |
}
\alternative {
  { r8 g c, d }
  { r2 \bar "|." }
}
}

text = \lyricmode {
Teď v~no -- ci de -- šti -- vé, de -- šti -- vé, de -- šti -- vé,
kdy pi -- lot ne -- mů -- že se vě -- no -- va -- ti prá -- ci své,
si kaž -- dý v~krou -- žek přá -- tel sed, tam ho -- vor dů -- vě -- rný se
ved a svo -- ji pí -- seň mi -- lou zpí -- va -- li jsme hned.
Teď vzlét -- nout je chví -- le a v~ši -- ré dá -- la -- vy,
dá -- la -- vy, dá -- la -- vy se brát a dí -- ven -- ce
mi -- lé zas kříd -- lem stří -- br -- ným svůj po -- zdrav dát.
Ať kam chce, o -- sud od -- va -- ne mne v~bo -- ji, už
dnes! Ty stá -- le pev -- nost srd -- ce své -- ho věr -- ně
střez! Nám zná -- my jsou cí -- le, a shů -- ry
zří -- me vše, to do -- bře věz.
A když jsme
}

accompaniment = \chordmode {
s2 |
\repeat volta 3 {
c2 | g2:7 | c2 |
c2 | g4 c | c4 a4:m | g2 |
g2 | g2 | a2:m | d2:7 |
g4 d4:7 | g4 a4:m | g2:7 | c2 | c2 |
g2:7 | g2:7 | a2:m | a2:m | d2:m |
e2:7 | e2:7 | a2:m | g2:7 | g2:7 |
a2:m | a2:m | d2:m | e2:7 | a2:m |
a2:m | d2:m | g2:7 | d4. g8:7 |
c4 f4 | b2:7 | b2:7 | e4:7 b4:7 |
e2 | g2:7 | g2:7 | a2:m | a2:m |
d2:m | e2:7 | a2:m |
}
\alternative {
  { s2 }
  { s2 }
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
