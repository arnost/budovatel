\version "2.24.0"
\header {
        title = "Manuš vojvoda"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key c \major \tempo "Volně" 4=72
\repeat volta 2 {
c4.( b8) c8[( b]) a8[( g]) | a4.( g16[ a]) g4 r4 |
c4.( b8) c8[( b]) a8[( g]) | \acciaccatura g8 f4.( e16[ f]) e4 r4 |
\acciaccatura f8 a2 a4 a4 | g4.( f16[ e]) d4.( e8) |
f4.( g8) e4 c4 | d2 d4 r4 |
f4.( g8) a4 c4 | g4.( f16[ e]) d4.( e8) |
f4. g8 e4 c4 |
}
\alternative {
{ d2 d4 r4 }
{ d2 d2 ~ | d1\fermata }
}
\bar "|."
}

text = \lyricmode {
Dos -- ta sme ja -- li,
ja -- li i pi -- li,
tlas -- ti jag -- ne -- ta,
vi -- no čer -- ve -- no.
Raz -- vja -- vaj baj -- rak,
ty Má -- nuš voj -- vo -- da!
vo -- da!
}

accompaniment = \chordmode {
\repeat volta 2 {
c1 c c f2 c
f1 g d2:m a2:m d1:m
f1 g d2:m c2
}
\alternative {
{ g1 }
{ g1 g1 }
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
        \midi { \tempo 4=72 }
}
