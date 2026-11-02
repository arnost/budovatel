\version "2.24.0"
\header {
        title = "Soudruzi, my jdem' s Vámi"
        subtitle = "Pochodová píseň čs. armády"
        composer = "V. Novotný"
        poet = "E. Prkno"
}

melody =  \relative c' {
        \clef treble
\repeat volta 2 {
\time 6/8 \key f \minor \tempo 4. = 72
f4.\mf des | f4. g4 aes8 | g4. f | r4 r8 f4 aes8 | c4. c4 c8 |
bes4. aes | g2. | R2. |
des'4. des4 des8 | g,4. aes4 bes8 | c4. aes4 g8 | f4. r4 r8 |
g4. g4 g8 | aes4. bes | c2. | R2. |
des4. des4 des8 | g,4. aes4 bes8 | c4. aes4 g8 | f4. r4 r8 |
g4. aes4 bes8 | aes4. g | f2. | R2. \bar "||"
\time 2/4 \key f \major \tempo 4 = 108
f4^\markup \italic "Refrén" f8 f | a4 f | c'2 | a4 r |
c4 d8 c | bes4 a | g r | R2 |
g4 g8 bes | d4 r | c4 c8 a | f4 r |
g4 a8 b | a4 g | c2 | R2 |
f,4 f8 f | a4 f | c'2 | a4 r |
c4 d8 c | a4 f | d'2 | R2 |
g,4 g8 bes | d2 | c4 c8 a | f2 |
a4 c8 a | g4 c |
}
\alternative {
{ f,2 | R2 | }
{ f'2~ | f8 r r4 \bar "|." }
}
}

text = \lyricmode {
Vstá -- vá nez -- měr -- ná sí -- la,
svě -- tem jde prou -- dem po -- vod -- ní,
ta smeč -- ka, kte -- rá ji zo -- tro -- či -- la,
stra -- chem se chví před ní,
to tří -- da děl -- ní -- ků na -- stou -- pi -- la,
do bit -- vy po -- sled -- ní.
Sou -- dru -- zi, my jdem s~Vá -- mi,
věr -- ně a v~kaž -- dý čas,
svou krás -- nou zem my bu -- du -- jem',
tak ja -- ko kaž -- dý z~Vás.
Sou -- dru -- zi, jsme tu s~Vá -- mi,
vždy ví -- ru měj -- te v~nás,
prá -- ci ru -- kou Vám o -- chrá -- ní
ar -- má -- dy pev -- ná hráz! hráz!
}

textb = \lyricmode {
Mar -- ně vrah ces -- tu hle -- dá
v~stí -- nu hra -- nič -- ních mez -- ní -- ků,
li -- do -- vá ar -- má -- da zbraň po -- zve -- dá
pro -- ti zá -- škod -- ní -- ku,
už ni -- kdy ni -- kdo jí roz -- kaz ne -- dá,
stří -- let do děl -- ní -- ků.
}

accompaniment = \chordmode {
\repeat volta 2 {
f2.:m s s s s
bes4.:m f:m c2.:7 s
bes2.:m c:7 f4.:m c:7 f2.:m
bes2.:m s c:7 s
bes2.:m c:7 f4.:m c:7 f2.:m
bes2.:m c:7 f:m s
f2 s c:7 f
c2:7 f g:7 c:7
g2:m c:7 f d:m
g2:7 s c c:7
f2 s c:7 f
f2:7 s bes d:7
g2:m c:7 f bes4 bes:m
f2 g4:m c:7
}
\alternative {
{ f2 s }
{ f2 s }
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
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { }
}
