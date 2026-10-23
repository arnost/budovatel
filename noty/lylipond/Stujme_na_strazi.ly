\version "2.24.0"
\header {
        title = "Stůjme na stráži"
        composer = "Karel Reiner"
        poet = "Jaroslav Pokorný"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key a \major \tempo "Pochodem" 4=112
\partial 4 e8. cis16 |
a4 cis8. e16 a4 gis8. a16 | b4 e, r cis'8. b16 | a4 gis8. a16 b4 fis | gis2. e8. cis16 |
a4 cis8. e16 a4 gis8 a | b4 e,2 cis'8 b | a4 gis8 fis gis4 gis | cis,2. cis4 |
d2 ~ d8 d cis d | e4 a, ~ a8 e' d e | f!4 e8[( f]) g!4 c,! | a'1 |
b8 b b4. b8 a b | c!4 d2 c8 d | e4 c!8 c d4 g,! | c!4. \xNote d8 \xNote b4 e,8. cis16 |
a4 cis8. e16 a4 gis8. a16 | b4 e,2 cis'8 b | a4 gis8 a b4 fis8 fis | gis2. a8 b |
cis4 cis8 b a8. a16 b8 cis | d4 f!2 f8 f | e4 e8. e16 e4 e8 e | e2. a,8 b |
cis4 cis8 b a8. a16 b8 cis | d4 f!2 f8 f | e4 e8. e16 e4 e8 e | a,2. r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Sou -- dru -- zi, kaž -- dý z~nás stůj na strá -- ži, lid nám dů -- vě -- ru dá -- vá svou.
Sbor ať ne -- přá -- tel nás -- tra -- hy ma -- ří, ni -- kdy k~nám vra -- zi ne -- pro -- jdou.
My škůd -- ce, kte -- ří stro -- jí ú -- kla -- dy ze -- mi mí -- ro -- vé,
u -- ví -- tá -- me v~pl -- né zbro -- ji, srd -- ce k~bo -- ji je ho -- to -- vé, hu -- rá!
Sou -- dru -- zi, stůj -- me na strá -- ži bdě -- lé, do -- kud je -- di -- ný v~ze -- mi je vrah;
lid náš mi -- lu -- je Sbor so -- ko -- ly smě -- lé __ na -- še ne -- přá -- te -- le jí -- má strach;
lid náš mi -- lu -- je Sbor so -- ko -- ly smě -- lé __ na -- še ne -- přá -- te -- le jí -- má strach.
}

accompaniment = \chordmode {
\partial 4 e4:7
a1 e2. cis4 fis2:m b e2. e4:7 a1 e2. cis4 fis2:m gis cis1
b2:m b8:m e4.:7 a1 d2:m c f1
e1 a4:m d2 d8 d:7 c2/g g c2 e:7
a1 e2. cis4 fis2:m b e2. a8 e:7
a4 a8 e:7 a4 a:7 d4:m bes2. a2/e e4 a8 e:7 a2. a8 e:7
a2. a4:7 bes1 a2/e e2:7 a1
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
        <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
