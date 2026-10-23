\version "2.24.0"
\header {
        title = "Věrni sobě"
        composer = "Hana a Karel Reinerovi"
        poet = "Hana a Karel Reinerovi"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key a \minor \tempo "Pochodem" 4=112
a4 a,8. b16 c4 c | d8. e16 f8 g a4 a | b b c8. c16 b8 a | g4 f e r |
c'4 c b8 a4. | g4 f e a, | b8. c16 d8 e f4 g | e r r2 \bar "||"
\key a \major
a2 e | a,4 a r8. b16 cis8. dis16 | e4 e fis fis | e r r e |
fis fis gis gis | a a b4. b8 | cis4 cis b b | <cis \parenthesize e>4 r r e, |
fis fis gis gis | a a b r8 b | cis4 cis b b | a r r2 \bar "|."
}

text = \lyricmode {
Vpřed, veď nás bou -- ře od -- va -- hy a sí -- ly,
lid jde s~ne -- přá -- te -- li ú -- čto -- vat.
Pro -- ti lži má zbraň své sí -- ly,
prav -- dou bu -- de bo -- jo -- vat.
Věr -- ni so -- bě a své -- mu cí -- li zů -- sta -- nem.
Svou jed -- no -- tu si u -- cho -- vá -- me na vzdor zlo -- bám všem,
a ni -- kdo ne -- smí zo -- tro -- čit už na -- ši krás -- nou zem.
}

accompaniment = \chordmode {
a1:m d2:m a:m e a:m d:m e a1:m d2:m a:m d1:m e
a2 e:7 a b:7 e b e1
d2 cis fis:m b:m6 a/e e:7 a1:6
d2 cis fis:m b:m6 a/e e:7 a1
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
