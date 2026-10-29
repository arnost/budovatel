\version "2.24.0"
\header {
        title = "Zavzpomínal kozák"
        composer = "Konstantin Listov"
        poet = "Alexandr Žarov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key g \major \tempo "Mírně" 4=100
\partial 8 d8 |
\repeat volta 3 {
d4 g4. e8 | fis4 e d | c'4 b a | b4 g r8 d8 |
d4 g4. e8 | fis2 e8 d | cis4 d e | fis2 r8 fis8 |
fis4 g a | b4 d, d' | c2 b8 a | g4 e r8 g8 |
d4 g4. b8 | d4 c b | c4 e, fis |
g2 \clef bass fis,8^"Sbor (basy)" e8 | dis4. b8 g' fis | e4 b a'8 g |
fis4. fis8 g a | b2 a8 b | c4. a8 g fis | b8[( g]) e4 e8 g |
fis4. cis8 dis b | e2 \clef treble fis'8.^"tenory" e16 | d4. c'8 b a | g8[( fis16 e]) d8 r g fis |
e4. d'8 c b | a2 c8 d | e2 c8 a | g2 fis8 e |
d4. e'8 d c | b2 c8 d | e2 c8 a | g2 fis8 e |
}
\alternative {
{ d4. e'8 d c | g2 r4 | }
{ d4. e'8 d c | g'2. \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Led roz -- tál a v~pod -- ja -- ří čis -- tý vzduch vo -- ní,
až k~sa -- dům jde zá -- to -- pa přes ho -- lou stráň.
„Kdes po -- bý -- val na bí -- lém, hřív -- na -- tém ko -- ni?“
se ko -- zá -- ka o -- pta -- lo děv -- če jak laň.
Za -- vzpo -- mí -- nal ko -- zák vo -- jín, ku -- dy s~fron -- tou všu -- dy šel
v~pol -- ní vý -- stro -- ji a zbro -- ji, kde svou běl -- ku na -- pá -- jel,
jak se bil za rod -- nou ze -- mi, jak si v~půt -- kách po -- čí -- nal,
na svůj Don, ti -- chý Don, čas -- to -- krát si vzpo -- mí -- nal.
Na svůj Don, ti -- chý Don, čas -- to --
krát si vzpo -- mí -- nal.
krát si vzpo -- mí -- nal.
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
        \midi { \tempo 4=100 }
}
