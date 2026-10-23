\version "2.24.0"
\header {
        title = "Slavný den"
        composer = "Ludvík Podéšť"
        poet = "Vlastimil Pantůček"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key e \major \tempo "Pochodem" 4=108
\repeat volta 3 {
b4 b8 b cis4 dis8 dis | e16[( b'8.]) b4 b2 | cis8 b a cis b4 a | b4 gis r2 |
b,4 b8 b cis4 dis8 dis | e16[( cis'8.]) cis4 cis r | b4 fis8 gis a4 gis8 fis | gis4 b r2 |
e,4 d8 e e'4 e | d4 c b r |
b2^"Refrén" cis4 gis | b4 a gis fis | gis2( b) |
b4 e2 gis,4 | cis4 b a b |
}
\alternative {
{ gis2. r4 }
{ \fixed c'' { e1 ~ | e4 } r r2 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Rá -- no když všed -- ní den za -- čí -- ná,
slu -- níč -- ko se smě -- je s~vý -- še
a to -- vár -- na prs -- tem ko -- mí -- na
he -- slo dne o -- blo -- ze pí -- še:
Až k~slun -- ci vy -- le -- tí náš graf!
Ví -- tám tě, všed -- ní dne, buď zdráv, __
ví -- tám tě, vše -- dní dne, buď zdráv!
zdráv! __
}

accompaniment = \chordmode {
\repeat volta 3 {
e1 | e1 | a2 b:7 | e1 |
e1 | a1 | b1:7 | e1 |
e2:7 c | a2:dim b:7 |
e1 | b1:7 | e2 b:m7 |
e1 | a4 b2.:7 |
}
\alternative {
{ e1 }
{ e1 | e1 }
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
        \midi { \tempo 4=108 }
}
