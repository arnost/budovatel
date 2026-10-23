\version "2.24.0"
\header {
        title = "Pochod pracující mládeže"
        composer = "Jan Kapr"
        poet = "Miroslav Kroh"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key es \major \tempo "Rázně" 4=116
bes8 g4. bes8 g r4 | c4 g d'4. g,8 | r4 c8 bes aes bes c es | bes4 g r g8 bes |
aes4 aes f aes | g4 g r g8 bes | d4 d r g,8 bes | d4 d r2 \bar "||"
bes4^"Refrén" aes8 g f4. c'8 | bes4 f g bes | c4 d es f | bes,4 r r es8 c |
es4. d8 c4 g8 aes | bes4. aes8 g4 g | f4 c' c d | bes4 bes,8 c d4 c8 bes |
bes'4 aes8 g f4. c'8 | bes4 f g bes | c4 d es f | bes,4 r r es8 c |
es4. d8 c4 g8 aes | bes4. aes8 g4 g | f4 c' bes f' | es2 ~ es8 r r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Le -- tí svě -- tem, le -- tí pí -- seň, ce -- lý svět ji zpí -- vá
s~ná -- mi, jdem a ros -- tem s~pís -- ní mí -- ru,
s~jas -- ným slun -- cem nad hla -- va -- mi.
Sou -- dru -- zi, do bo -- je smě -- le za šťast -- nou bu -- dou -- cnost,
pí -- seň bou -- ří tmou, na -- še kro -- ky jdou, my sí -- ly má -- me dost,
sí -- ly má -- me dost!
Sou -- dru -- zi, do bo -- je smě -- le, na strá -- ži mí -- ru blíž,
pí -- seň bou -- ří tmou, na -- še kro -- ky jdou, mír pís -- ní ro -- ze -- zníš! __
}

accompaniment = \chordmode {
es2 g:m | c:m g:m | g4:m aes2. | es1 |
f2:m g:7 | c1:m | g1:m | bes1:7 |
es2 aes4. bes8 | es4 bes es2 | c4:m bes es bes:7 | es2. aes4 |
es2. es8 des | c1:7 | f2.:m d4 | g2:m bes:7 |
es2 aes4. bes8 | es4 bes es2 | aes4 bes:7 aes:7 f:m6 | bes2. aes4 |
es2. es8 des | c1:7 | f4:m f:7 bes2 | es1 |
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
        \midi { \tempo 4=116 }
}
