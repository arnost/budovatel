\version "2.24.0"
\header {
        title = "Májová"
        composer = "Miloš Smatek"
        poet = "K. Baroch"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Pochodem" 4=112
\repeat volta 2 {
f8 g a c | bes a g f | e f g4 | c,4 c'8 bes | a4. g8 | f4 g8 a |
}
\alternative {
{ g8 f e d | c4 r4 }
{ g'8 g a b! | c4^"Refrén" c8. c16 }
}
\repeat volta 2 {
d2 | r8 d c bes | a4 c | r4 a8. a16 | bes2 | r8 d c bes | a4 f | r4 e8 f |
g4 g8 g | g4 e8 g | a4 a8 a | a4 g8 a |
}
\alternative {
{ b!4 g | a b! | c2 | r4 c8. c16 }
{ bes4 a | g a | f2 ~ | f8 r8 r4 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Vzhů -- ru k~slun -- ci zve -- dá hla -- vu ka -- ždi -- čký květ,
ja -- rní lou -- ku vi -- tr když mě -- kce ro -- zvl -- ní.
do tan -- ce mu zní: Ho -- la
hej, vpřed, dě -- ti má -- je! Ho -- la hej, ať pra -- por vla -- je,
pod kte -- rým svo -- rně jdem pí -- sni -- čkou, ú -- smě -- vem bu -- do --
vat svět pl -- ný krás. Ho -- la
pí -- seň ve -- de nás.
}

textb = \lyricmode {
Do ko -- le -- čka, do -- ko -- la se ro -- ztan -- čí svět,
pí -- seň mlá -- dí já -- sa -- vá
\repeat unfold 12 { \skip 1 }
hej, ať bu -- bny ví -- ří! Ho -- la hej, vpřed pi -- o -- ný -- ři!
Rá -- zně dál, smě -- le výš, ka -- ždým dnem cí -- li blíž na -- še
}

accompaniment = \chordmode {
\repeat volta 2 {
f2 c:7 c:7 c:7 f d:m
}
\alternative {
{ g2:7 c }
{ g2:7 c4 c:7 }
}
\repeat volta 2 {
bes2 c:7 f d:m bes c:7 f c
c2 c:7 f f
}
\alternative {
{ g2:7 g:7 c c:7 }
{ g4:m f c2:7 f f }
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
        \midi { \tempo 4=112 }
}
