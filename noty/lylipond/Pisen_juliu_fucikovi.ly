\version "2.24.0"
\header {
        title = "Píseň Juliu Fučíkovi"
        composer = "Alois Palouček"
        poet = "Pavel Kohout"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Volně" 4=80
r8 c[( a') c,] r8 c[( a') c,] |
\repeat volta 2 {
\once \omit Staff.KeySignature \key f \major \once \omit Score.MetronomeMark \tempo 4=80
a'4 g8 f g a bes8. d16 | c2 r8 a bes c | c4 bes c,4. bes'8 | bes4 a2 r4 |
r8 g a bes bes4. bes8 | c4 a f8 f g f | e8 a b cis b4( e,) | a2 r8 a e g |
fis4 fis2 g8 a | a4 g2 g4 | f8 g a4. f8 e d | e4 e r2 \bar "||"
\key d \major \tempo "Pochodem" 4=112
a,4 d8 e fis4. g8 | a8 g fis2 fis8. a16 | g4 g8 a b4 b | a4 fis r2 |
a,4 d8 e fis4 g | a8 g fis4 r fis8 gis | ais4 cis,8 ais' gis4 cis,8 g' | fis4 r r fis |
fis'4. e8 d4 fis | e4 e8[( d]) cis[( d]) e4 | d4 d8 cis b cis d fis | e4 cis2 a4 |
fis4. gis8 a4 b | cis4 cis8 e e[( cis]) d e | fis4 d cis8 b fis gis |
}
\alternative {
{ a2 r4 a8.\fermata g16 }
{ \key d \major a2 r2 \bar "||" }
}

a,4 d8 e fis4 g | a8 g fis4 r fis8 a | g4 g8 a b4 b | a4 fis2 r4 |
a,4 d8 e fis4 g | a8 g fis4 r fis8 gis | ais4 cis,8 ais' gis cis, gis'4 | fis4 r r fis |
fis'4. e8 d4 fis | e4 e8[( d]) cis[( d]) e4 | d4 d8 cis b[( cis]) d[( fis]) | e4. cis8 r4 fis, |
fis4.. gis16 a4 b | cis4 cis8[( d]) e4 a | r8 a fis a d4 d | r8 fis d fis g4 g8. g16 |
a2 a4 r | R1 \bar "|."
}

text = \lyricmode {
\repeat unfold 2 \skip 1
\set stanza = "1."
Sou -- dru -- hu na -- šich mla -- dých cest,
sou -- dru -- hu na -- šich snů a plá -- nů,
chce -- me vám zpí -- vat na po -- čest o ze -- mi,
kde už ne -- ní pá -- nů,
a kte -- rá ve svém srd -- ci cho -- vá krev hr -- di -- nů i je -- jich slo -- va.
Jdou li -- dé z~prá -- ce po ces -- tách za -- sně -- né čes -- ké jar -- ní no -- ci.
Ni -- kdo už, ni -- kdo ne -- má strach. Ne -- jsme už, ne -- jsme bez po -- mo -- ci.
Nám chrá -- ní ve -- če -- ry i rá -- na ta va -- še ze -- mě mi -- lo -- va -- ná,
nám chrá -- ní na -- še ve -- če -- ry rá -- na ta va -- še mi -- lo -- va -- ná
zem. \skip 1 \skip 1 ná.
\set stanza = "3."
A kdy -- by -- ste tou ze -- mí šel, kde s~li -- dem vlád -- nou ko -- mu -- ni -- sté,
tak by -- ste všu -- de u -- sly -- šel, všu -- de vi -- děl a po -- znal by -- ste,
že ji už ni -- kdy ne -- ztra -- tí -- me, pro -- to -- že bdí -- me, bdí -- me,
že ji už ni -- kdy ne -- ztra -- tí -- me, pro -- to -- že bdí -- me,
pro -- to -- že bdí -- me! My bdí -- me!
}

accompaniment = \chordmode {
f1
\repeat volta 2 {
f2 g4:m c:7 | f1 | g2:m c:7 | f1 |
g2:m c:7 | f2 d:m | a2 e:7 | a1 |
d1 | g1:m | d2.:m e4:7 | a1 |
d1 | d2. cis4:dim | e2:m a:7 | d2 a:7 |
d1 | d1 | fis2 cis | fis1 |
b2:m e:7 | a1 | e1:7 | a2. a4:7 |
d1 | a4 a:7 fis2 | b2:m e:7 |
}
\alternative {
{ a2. c4:7 }
{ a2 a:7 }
}
d1 | d2. cis4:dim | e2:m a:7 | d1 |
d1 | d1 | fis2 cis | fis1 |
b2:m e:7 | a1 | e1:7 | a1 |
d1 | a2 a:7 | d2 g | d2 g |
d1 | d1 |
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
        \midi { \tempo 4=80 }
}
