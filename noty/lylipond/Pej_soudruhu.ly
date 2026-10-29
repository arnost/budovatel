\version "2.24.0"
\header {
        title = "Pěj, soudruhu"
        composer = "Z. Kompanějec"
        poet = "Lev Ošanin, český text Kamil Bednář"
}

melody =  \relative c' {
        \clef treble
        \time 6/8 \key g \major \tempo 4.=60
\repeat volta 5 {
e4. b'4. | b4. a | g8[( a]) b a[( g]) fis | e4. b |
e4. b' | c4.~ c4 a8 | d,4 c'8 b4 a8 | b2. |
e4.^"Dva hlasy" d | a4. b4( c8) | d4 a8 d4 c8 | b4. a4( b8) |
c4. b | fis4. g4( a8) | g4 fis8 g4 a8 | b2. |
e4.^"Sbor" d | a4. b4( c8) | d4 a8 d4 c8 | b4. a4( b8) |
c4. b | fis4. g4( a8) | b4 g8 fis4 b8 |
}
\alternative {
{ e,2. }
{ e'2.~ | e2.~ | e2.~ | e8 r r r4 r8 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Pěj, sou -- dru -- hu, zpí -- vej o Ka -- chov -- ce,
o o -- hních, pla -- nou -- cích v~tu -- hý mráz,
o chlap -- ci, jenž __ ve dva -- cá -- tém ro -- ce __
zve -- dl puš -- ku __ v~pa -- mát -- ný ten čas.
O chlap -- ci, jenž __ ve dva -- cá -- tém ro -- ce __
zve -- dl puš -- ku __ v~pa -- mát -- ný ten
čas. stráž! __
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new Voice { \melody }
        >>
        \midi { \tempo 4.=60 }
}
