\version "2.24.0"
\header {
        title = "Naše mámy"
        composer = "Al. Šebestík"
        poet = "J. V. Svoboda"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key es \major \tempo "Mírně rychle" 4=100
g4\mf g | bes4. g8 | aes4 bes | g4. es8 | g4 g | bes g | c2 | g4 r |
f4 f | d es | f g | bes4. aes8 | g4 f | bes4. g8 | f4 es | R2 \bar "||"
\key bes \major
f4^\markup { \italic "Refrén:" } f | d f | bes g | f4. f8 | g4 g | f es | bes' f | R2 |
es4 d | es4. f8 | g4 g | a bes | c f, | d' c | bes bes | bes'4-> r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Tra -- ktor tá -- hne pluh i brá -- ny. Kdo jej ří -- dí? Má -- ma.
Za den ce -- lé vel -- ké lá -- ny zo -- rá má -- ma sa -- ma.
Ve tří -- dě či na za -- hrá -- dce hra -- je -- me si, čte -- me.
Až se má -- my vrá -- tí z~prá -- ce, pak jim po -- mů -- že -- me.
}

accompaniment = \chordmode {
es2 es bes:7 es es es c:m es
bes2:7 g:m bes aes es4 f:7 bes2:7 es s2
bes2 g4:m bes es2:7 bes f:7 f:7 bes s2
c4:m g c:m bes c2 d4:7 g:m f2:7 f:7 bes bes
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
        \midi { \tempo 4=100 }
}
