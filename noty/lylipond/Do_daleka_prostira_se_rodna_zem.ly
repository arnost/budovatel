\version "2.24.0"
\header {
        title = "Do daleka prostírá se rodná zem"
        composer = "L. Bakalov"
        poet = "Jakov Švedov, český text M. Kubr"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key as \major \tempo "Pochodové tempo" 4=112
\repeat volta 2 {
f8 f f g as as g f | c'4 g c2 |
f,8 f f g c c bes as | es'4 bes es2 |
as,8 c des es f c f es | bes4^"Široce" f f' es8 des |
c8 bes c es des4 c | bes4 c f, es' |
as,8 c des es f c f es | bes4^"Široce" f f' es8 des |
c8 bes c es des4 c | \time 2/4 bes4 c |
}
\alternative {
{ \time 4/4 f,2. r4 }
{ \time 4/4 f'1~ | f1\fermata \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Do da -- le -- ka pro -- stí -- rá se rod -- ná zem...
Vo -- já -- ci jdou za po -- led -- ne ú -- vo -- zem.
V~po -- cho -- du jim smut -- no ne -- ní, zpí -- va -- jí...
Dív -- ky ces -- tou na cvi -- če -- ní po -- tka -- jí. Ech,
v~po -- cho -- du jim smut -- no ne -- ní, zpí -- va -- jí...
Dív -- ky ces -- tou na cvi -- če -- ní pot -- ka
jí. zvou. __
}

accompaniment = \chordmode {
\repeat volta 2 {
f1:m | c1 | f2:m des2 | es4 bes2:m7/f es4 |
as2 f2 | bes1:m/des | f2:m/c bes4:m f4:m/c | bes4:m/des c4 f4:m es4 |
as2 f2 | bes1:m/des | f2:m/c bes4:m f4:m/c | bes4:m/des c4 |
}
\alternative {
{ f1:m }
{ f1:m | f1:m }
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
        \midi { \tempo 4=112 }
}
