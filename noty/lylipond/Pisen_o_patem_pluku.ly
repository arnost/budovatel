\version "2.24.0"
\header {
        title = "Píseň o pátém pluku"
        subtitle = "(Cancion de el Quinto Regimiento)"
        poet = "Překlad: Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 3/8 \key g \minor \tempo "Živě" 4.=69
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy)
r8 d8 d8 |
\repeat volta 2 {
d'4 d8 | d4 c8 | \phrasingSlurDashed c4\( bes8\) ~ | bes8 a8 bes8 |
d8 a4 | bes8 g4 | fis4 d8 ~ |
}
\alternative {
{ d8 d8 d8 }
{ d8\repeatTie d8 fis8 }
}
\repeat volta 2 {
a4 fis8 ~ | fis8 g8 a8 | g4 fis8 ~ | fis8 g8 a8 | bes8 g4 |
a8 f!4 | es4 d8 ~ |
}
\alternative {
{ d8 d8 fis8 }
{ \once \override Score.VoltaBracket.text = \markup \bold "5."
  d8\repeatTie g16[ a] bes16[ c] }
}
d8 c8 bes8 | a8 g8 bes8 | a4. | d,4.\fermata |
\repeat volta 2 {
r8 d16[ d d d] | g8 g8 g8 | f8 f8 f8 | es4. | f16[( es] d4)\fermata |
}
}

text = \lyricmode {
Na -- še stra -- na ko -- mu -- nis -- tů,
ta se bo -- jů ne -- zná bá -- ti.
Na -- še
_ Špa -- něl -- ský lid a -- by chrá -- nil,
rych -- le tvo -- ří pluk náš Pá -- tý.
Špa -- něl
_ Mno -- ho ma -- tek za sy -- ny hr -- dě se dí -- vá,
sly -- ší, jak si Pá -- tý Pluk do kro -- ku zpí -- vá.
}

accompaniment = \chordmode {
s4.
\repeat volta 2 {
g4.:m d:7 g:m g:m d g:m d
}
\alternative {
{ d4. }
{ d4. }
}
\repeat volta 2 {
d4. d d d es f d
}
\alternative {
{ d4. }
{ g4.:m }
}
g4.:m g:m d d
\repeat volta 2 {
d4. es f es d
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
        \midi { \tempo 4.=69 }
}
