\version "2.24.0"
\header {
        title = "Veliká láska"
        composer = "Valentin Kručinin"
        poet = "O. Fadějevová, český text M. Kundera"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key g \major \tempo "Volně, výrazně" 4=80
\repeat volta 4 {
r4 r r8 b8^"Sólo" | a8 g16([ a]) fis4. a8 | g8 fis16([ g]) e4. g8 |
fis8 e d c' g8. a16 | b8. c16 d4. g,8 | fis8 e d'4. c8 |
b8 e e,4. fis8 | g8 a b c a b | g2~ g8 g8^"Sbor" |
fis8 e d'4. c8 | b8 e e,4. fis8 | g8 a b c a b |
}
\alternative {
{ e,2~ e8 r8 | R2. }
{ e'2.~ | e4~ e8 r8 r4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Jak ne -- mít rád tu ši -- rou zem,
po níž jsem bě -- hal ja -- ko ma -- lý kluk,
šu -- mi -- vý les, ze -- le -- nou stráň
a svě -- ží vů -- ni ros -- ných luk. __
Šu -- mi -- vý les, ze -- le -- nou stráň
a svě -- ží vů -- ni ros -- ných luk. __
té. __
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
        \midi { \tempo 4=80 }
}
