\version "2.24.0"
\header {
        title = "K 1. máji 1934"
        composer = "Ervín Schulhof"
        poet = "Jan Dolina"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key e \major \tempo "Pochodem" 4=112
\repeat volta 3 {
\partial 4 cis4 |
e4 e e cis | e e e fis8 fis | gis4 fis gis a | b cis gis r8 a |
b4 e, e e | fis gis a gis | cis dis8 e dis4 cis | b cis gis r |
e'4 dis8 cis b4 cis | dis gis, gis gis | e' dis8 cis b4 cis | gis gis gis r |
e'4 dis8 cis b4 a | b e, e e | cis' b8 a gis4 e | b' b b r \bar "||"
e,4^"Refrén" e8 e fis gis a r | b4 b8 b cis4 dis | e dis8 cis b4 a8 b | cis4 a8 a a4 r |
a4 cis8 b a4 b8 cis | b4 cis8 dis e4 dis | cis b8 a gis4 fis8 e | b'4 b8 b b4 r |
e4 dis8 cis b4 cis8 cis | a8 gis fis4 e
}
}

text = \lyricmode {
\set stanza = "1."
My v~boj se dá -- me s~dneš -- ním řá -- dem za pro -- le -- tář -- skou vol -- nou zem,
my zúč -- tu -- je -- me s~va -- ším hla -- dem, nám všech -- no pat -- ří, všec -- ko chcem.
My roz -- to -- čí -- me fa -- brik ko -- la, sou -- dru -- zi, ne, to ne -- ní klam,
snad dnes, snad zít -- ra, ho -- la, ho -- la, to všech -- no bu -- de pa -- třit nám.
Mar -- ně se re -- ak -- ce vzte -- ká a spí -- lá, zlá -- me si vaz, kdo by na nás si trouf?
Ú -- to -- ky od -- ra -- zí děl -- nic -- ká sí -- la, sra -- že -- ná v~jed -- not -- ný že -- lez -- ný houf,
sra -- že -- ná v~jed -- not -- ný že -- lez -- ný houf!
}

accompaniment = \chordmode {
\repeat volta 3 {
\partial 4 s4 |
e1 | e2. b4 | e1 | e1 |
e2 a | a2. e4 | a1 | e1 |
cis1:m | gis | cis:m | cis:m |
a1 | e | a2 e | b1 |
e2 b | e1 | a | a |
a1 | gis2:m cis:m | a e | b1 |
a2 e | b4 e2
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
