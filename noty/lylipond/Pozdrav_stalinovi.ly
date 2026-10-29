\version "2.24.0"
\header {
        title = "Pozdrav Stalinovi"
        composer = "Jan Kapr"
        poet = "Karel Michal Walló"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key bes \major \tempo "Pochodem" 4=112
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy)
\repeat volta 3 {
bes4 bes ~ | bes8 g bes c | d4 c8[( es]) | d4 c | bes4 bes8.[ c16] | d4 es | f4. c8 | c2 |
r4 es | c4. d8 | es2 | c4 r | r4 d | bes4 a8[( g]) | a2 | f4 r |
bes2 ~ | bes4. r8 | a2 ~ | a4. r8 | r4 g | c es | g2 | f4( es) | d2 | c2 |
}
\alternative {
{ bes2 | R2*13 }
{ bes2 | R2*3 | bes2\fermata ~ | bes4 r4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Zdra -- ví -- me Va -- še če -- lo smě -- lé, zdra -- ví -- me o -- či zá -- ři -- vé, __
zdra -- ví -- me ot -- ce i u -- či -- te -- le,
Vás, __ Vás, __ Vás, mi -- lo -- va -- ný Sta -- li -- ne! ne! Vás! __
}

accompaniment = \chordmode {
\repeat volta 3 {
bes2 bes8 es4. bes4 f d2 g2:m g4:m c:m f2 c2:m c:m c:m c:m c:m c4:m g:m g:m a:7 d2:m d:m
bes2 bes d:m d:m es c:m f:7 f:7 f:7 f:7
}
\alternative {
{ f2:7 bes bes d:m bes d4:m es bes es c:m f g2:m g:m c:7 c:7 f:7 f:7 }
{ bes2 d4:m es bes es c:m f:7 bes2 bes }
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
