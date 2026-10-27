\version "2.24.0"
\header {
        title = "Hle, vojáci jdou"
        composer = "K. Molčanov"
        poet = "M. Lvovskij, český text J. Milde"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor \tempo "Slavnostní pochod" 4=100
\repeat volta 3 {
r4 c8 d es4 d8 c | c'4 as8 bes c4 bes8 as | c4 c8. c16 c4 c8. c16 | c2 g |
r4 c,8. d16 es4 f8 g | bes4 des8. es16 f4 g8 f | e4 r c8 c d e |
f4 g8 f as4 g8 f | ces4 r f,4 bes8 d | g4( f es) d |
g,4 g8. g16 a4 fis8. d16 | bes'2( b) | c4 es8 d c4 bes8 as |
g4 fis8 g c bes4 as8 | g4 d8. es16 f4 es8 d |
}
\alternative {
{ c'4 c r2 }
{ g2 c \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Hle, vo -- já -- ci tam jdou, Hle, vo -- já -- ci tam jdou, jdou ste -- pí po ú -- ho -- ru,
a pě -- jí pí -- seň svou, a pě -- jí pí -- seň svou, svou pí -- seň o ja -- vo -- ru,
o ja -- vo -- ru o ti -- ché za -- hra -- dě a o smu -- teč -- ních jí -- vách
a rod -- ných há -- jích svých, o rod -- ných há -- jích svých a o ši -- ro -- kých
ni -- vách. ni -- vy.
}

accompaniment = \chordmode {
\repeat volta 3 {
c1:m f1:m f2:m c4:m f4:m c2:m f4:m c4:m
c1:m g1:dim7 as2:aug c2:7
f1:m f2:dim bes2 g1
c4:m a4:7 d2:7 g2:m g2:7 c2.:m as4
c2.:m as4 c2:m g2:7
}
\alternative {
{ c1:m }
{ c1:m }
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
        \midi { \tempo 4=100 }
}
