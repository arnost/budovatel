\version "2.24.0"
\header {
        title = "Píšou mi psaní"
        composer = "lidový vojenský nápěv"
        poet = "Fráňa Šrámek"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \major
a4 a | b b | a2 | R2 | d4 d | cis b | a2 | R2 |
\repeat volta 2 {
b4 b | g8 b d b | a4 a | fis8 a b a | g4 b | a4. g8 |
}
\alternative {
{ fis4 g | a r | }
{ fis4 e | d r | }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pí -- šou mi psa -- ní
vo -- jan -- ští pá -- ni,
a tam sto -- jí psá -- no,
dva -- nác -- té -- ho rá -- no,
že já mu -- sím ru -- ko -- vat.
ru -- ko -- vat.
}

accompaniment = \chordmode {
d2 | d2 | d2 | d2 | g2 | g2 | a2:7 | a2:7 |
\repeat volta 2 {
g2 | g2 | d2 | d2 | e2:m | a2:7 |
}
\alternative {
{ d2 | d2 | }
{ a2:7 | d2 | }
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
