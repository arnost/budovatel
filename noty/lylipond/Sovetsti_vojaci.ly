\version "2.24.0"
\header {
        title = "Sovětští vojáci"
        composer = "Michail Krasev"
        poet = "Michail Krasev a Sergej Baruzdin, český text O. Bárta"
}

melody = \relative c'' {
        \clef treble
        \time 2/4 \key es \major \tempo "Pochodovým tempem" 4=108
bes8.\mf as16 g8 f | es4 es | f bes | g r |
bes8. as16 g8 f | es4 es | f bes | g r |
c8\f c c bes | as4 f | g8 g c, c | as'4 r |
\repeat volta 2 {
f8 f g as | bes4 g8 bes | bes as g f |
}
\alternative {
{ g4 r }
{ es4 r }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ti so -- vět -- ští chra -- bří vo -- já -- ci,
o -- dvá -- žní a krá -- sní jo -- ná -- ci,
na če -- pi -- ci hvě -- zdu, v~ru -- ce sa -- mo -- pal,
ka -- ždý z~nich se pě -- kně na dě -- ti u -- smí -- val, val.
}

accompaniment = \chordmode {
bes2:7 es4 c:m bes g:m es2
bes2:7 es4 c:m bes g:m es2
as4 c:7 f2:m c f:m
\repeat volta 2 {
bes2:7 es bes:7
}
\alternative {
{ es2 }
{ es2 }
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
