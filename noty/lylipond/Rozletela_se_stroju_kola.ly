\version "2.24.0"
\header {
        title = "Rozletěla se strojů kola"
        composer = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Pochodem" 4=108
r8 d e fis | g4 g | g a | b g |
r8 d g a | b4. g8 | a4. fis8 | g4 r |
r8 b b b | b4 b | b cis | d b |
r8 fis b cis | d4. b8 | cis4. ais8 | b4 r |
r8 b a! b | c!4 a | b c | b2 |
g8 \breathe g g b | a4 a | a b | a2 |
r8 d, e fis | g4 g | g b | d2 |
b8 \breathe g g b | d4. b8 | d4. b8 | d2 |
r4 d8 b \bar "||"
g4 g | g16 g r8 d'8 b | g4 g |
g16 g r8 d'8 b | g4 g | g b8. g16 | a2 ~ | a4 r |
\repeat volta 2 {
d4 cis8 d | e e d cis | d2 | b2 |
c4 a8 b | c c b a | b2 | g2 |
g4 d8 d | g d g b | d2 | b4 g8 b |
d2 | b4 b |
}
\alternative {
{ d2 ~ | d4 r | }
{ g,2 ~ | g4 r \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Roz -- le -- tě -- la se stro -- jů ko -- la
a div -- ná pí -- seň za -- zní -- vá,
pro -- le -- tář pro -- le -- tá -- ře vo -- lá
a v~srd -- ci ra -- dost za -- chví -- vá.
Da -- le -- ký ob -- zor ru -- dě zá -- ří,
kde o -- či tem -- ně zře -- ly dřív:
To spo -- ji -- li se pro -- le -- tá -- ři
v~jed -- not -- ný, sil -- ný ko -- lek -- tiv!
My mla -- dí jdem' v~če -- le a srd -- ce své
vře -- lé svo -- bo -- dě lid -- stva chce -- me dát. __
V~boj za krev ot -- ců u -- bí -- je -- ných,
za sl -- zy ma -- tek o -- puš -- tě -- ných,
za ge -- ne -- ra -- ce vy -- řa -- ze -- ných,
za no -- vý, lep -- ší řád! __
řád! __
}

accompaniment =\chordmode {
s2 g g g
g2 g d:7 g
g2 g g4 fis:7 b2:m
b2:m b:m fis:7 fis:7
fis2:7 d:7 d:7 g
g2 a:7 a:7 d:7
d2:7 g g g
g2 g g g
g2 g g g
g2 g g a:7 d:7
\repeat volta 2 {
g2 g g g
d2:7 d:7 g g
g2 g g g
d2:7 d:7
}
\alternative {
{ d2:7 d:7 }
{ g2 g }
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
