\version "2.24.0"
\header {
        title = "Hornická píseň"
        composer = "Jaroslav Teklý"
        poet = "Modrá"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key a \minor \tempo "Pochodovým tempem" 4=108
c8 b a4 | e'8 e4. | f8 e d4 | e4 r |
r8 f f g | a4 g | f16 e8. d4 | e4 r |
f4 f8 f | f e d4 | e c | b8 a4. |
d8 d4 d8 | c8 b4. | e8 e r f | e4 r |
a,4 b8. c16 | d8 d c b | e2 | a,4 r8 a | f'4 f8 g |
a8 f r g | a16 a8. gis8 a | b8 e,4. \bar "||"
\time 4/4 \key a \major
a4 cis,8. d16 e4 e | fis e8 dis e4 a, | b cis8 d cis4 b | cis2 cis |
a'4 fis8. gis16 a4 a | a gis16 fis8. gis4 cis, | fis fis8 gis a4 b | cis2 r |
d4 d8. d16 cis4 fis, | fis' fis8. fis16 e4 a, | b b8 cis e4 cis | cis b cis2 |
a4 gis8 fis b4 e, | b' a8 gis cis4 cis | r8 cis cis d e4 cis | cis b a2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ša -- chet -- ní vo -- zík s~ko -- le -- jí spad,
ko -- la mu zvol -- na u -- jí -- dá rez,
na hal -- dě v~ka -- me -- ní hor -- ník mla -- dý
bez prá -- ce cho -- dí! Hla -- dy tam kles.
Pojď s~ná -- mi, ka -- ma -- rá -- de, zpí -- vat,
že z~bí -- dy a kr -- ve se no -- vé mlá -- dí ro -- dí.
Zpí -- vá -- me pí -- seň, v~níž na -- še mlá -- dí bí -- du a hlad již svlé -- ká,
zpí -- vá -- me pí -- seň, při kte -- ré kle -- ce zů -- sta -- nou klid -- ně stát.
Až pí -- seň do -- zní, vo -- zík se zved -- ne, klec ša -- chet na -- šich za -- fá -- rá,
dá u -- hlí sí -- lu, ruch do všech pa -- ží, ka -- han -- ce prá -- ce bu -- dou plát.
}

accompaniment = \chordmode {
a2:m | a:m | d:m | a:m |
d2:m | d:m | d:m | e:7 |
d2:m | d:m | a:m | a:m |
d2:m | d:m | e:7 | e:7 |
a2:m | d:m | a:m | a:m | d:m |
d2:m | d:m | e:7 |
a1 | d4 e a2 | e1:7 | cis:7 |
fis1:m | fis2:m cis:7 | fis1:m | cis:7 |
b2:m fis:m | d a | e1:7 | a4 e:7 cis2:7 |
fis2:m e:7 | e:7 a | a1 | e2:7 a |
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
