\version "2.24.0"
\header {
        title = "Komsomolská"
        composer = "Vasilij Solovjov-Sedoj"
        poet = "Alexandr Galič, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key cis \minor \tempo "Pochodovým tempem" 4=108
cis4. dis8 | e8 cis dis e | fis4 cis' | a fis |
e4 b' | gis e | fis8. e16 dis8 cis | gis'2 |
cis,8. cis16 cis8 cis | cis cis dis e | fis4( cis' | a) fis |
e4 b' | gis a | gis8. fis16 dis8 e | cis4 b8 b \bar "||"
\time 4/4 \mark \markup \small \italic "Refrén"
b'4 cis b8. fis16 gis8 a | gis2~ gis8 r gis gis |
cis4 e dis8. cis16 bis8 dis |
\time 2/4 cis4 gis8 a \bar "||"
\time 4/4 b8 b b b~ b4 a8 b | cis4 fis,8 fis fis4 e8 fis |
b8~ b4 a8 gis gis fis fis | cis'2. gis4 | cis cis, e gis |
b4 a2 cis4 | b8( fis'4) dis8 b fis gis a | gis2. gis8 a |
b8 b b b~ b4 a8 b | cis4 fis,8 fis fis4 e8 fis |
b8~ b4 a8 gis gis fis fis | cis2. r4 \bar "|."
}

text = \lyricmode {
Tó -- ny trub -- ky zně -- jí, kaž -- dý vstá -- vá,
vý -- zbroj be -- re, hned je ho -- tov jít.
Mlá -- de -- že pluk na ces -- tu se dá -- vá,
za vlast krás -- nou pů -- jdou se teď bít.
Na shle -- dá -- ní, má -- mo, ví -- ru měj,
když se lou -- čím, po -- li -- bek mi dej,
má -- mo, na shle -- dá -- ní, ví -- ru měj,
pře -- staň lkát, pos -- pěš nám jen šťast -- nou ces -- tu přát.
Buď sbo -- hem, kra -- ji rod -- ný,
jak ví -- těz hvěz -- da bu -- de plát!
Má -- mo, na shle -- dá -- ní, ví -- ru měj,
pře -- staň lkát, pos -- pěš nám jen šťast -- nou ces -- tu přát!
}

accompaniment = \chordmode {
cis2:m | cis2:m | fis2:m | fis2:m |
e2 | e2 | gis2:7 | gis2:7 |
cis2:m | cis2:m | fis2:m | fis2:m |
e2 | fis2:m | gis2 | cis4:m b4:7 |
e2 b2:7 | e1 | cis2:m gis2:7 |
cis2:m |
cis1:7 | fis1:m |
e4. gis8:7 gis2:7 | cis1:m | cis1:m |
fis1:m | b2 b2:7 | e1 |
cis1:7 | fis1:m |
e4. gis8:7 gis2:7 | cis1:m
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
