\version "2.24.0"
\header {
        title = "Pochod veselých dětí"
        composer = "Isaak Dunajevskij"
        poet = "Vasilij Lebeděv-Kumač, český text Jan Noha"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major
\partial 8*3 d8 fis a |
\repeat volta 5 {
  d4 cis8. a16 cis4 b8. g16 | b4 a r8 d,8 d fis |
  a4 gis8. a16 ais4 a8. ais16 | b2 ~ b8 d d d |
  d4 cis8. b16 b4 a8. gis16 | b4 a r8 d, d e |
  fis4 eis8 fis a g b, cis | d4 r r8 d d d |
  d4 b8 d g4 d8 e | fis8.( e16) d4 r8 d d d |
  d4 b8 d g4 a8. b16 | cis2 ~ cis8 cis cis cis |
  cis4 b8. a16 g4 fis8. g16 | b4 a r8 d, d e |
  fis4 eis8 fis a g b, cis |
}
\alternative {
  \volta 1,2,3,4 { d2 ~ d8 d fis a }
  \volta 5 { d,8 r r4 r2 \bar "|." }
}
}

text = \lyricmode {
Leh -- ko je u srd -- ce s~ra -- dost -- nou pís -- ní,
ve kte -- ré zmi -- zí _ smu -- tek i žal.
Dvo -- ry a ve -- sni -- ce s~ve -- se -- lou pís -- ní,
ve -- li -- ká mě -- sta ji zpí -- va -- jí si dál.
Pí -- seň nám po -- má -- há sta -- vět a ží -- ti,
jak pří -- tel nás ve -- de do bo -- je vpřed.
Kdo s~pí -- sní do -- ve -- de ži -- vo -- tem jí -- ti,
ni -- kdy se ne -- ztra -- tí, do -- bu -- de si
svět. Kom -- so -- mol
svět.
}

accompaniment = \chordmode {
\partial 8*3 s8*3 |
\repeat volta 5 {
  d2 g | d1 | d2 d:7 | g1 |
  g2 a:7 | d1 | d2 a:7 | d1 |
  g1 | d1 | g1 | fis1 |
  a1:7 | d1 | d2 a:7 |
}
\alternative {
  \volta 1,2,3,4 { d1 }
  \volta 5 { d1 }
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
        \midi { \tempo 4=120 }
}
