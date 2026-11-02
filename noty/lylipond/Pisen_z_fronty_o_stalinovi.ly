\version "2.24.0"
\header {
        title = "Píseň z fronty o Stalinovi"
        composer = "V. Kočetov"
        poet = "Vladimir Lugovskoj, český text Jelena Holečková"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \minor \tempo "Pochodem" 4=104
bes4^"Solo" g | c4. bes8 | bes aes g8. f16 | ees4 c |
f4 g | aes4. f8 | bes8. c16 g8 f | g4~ g8 r |
ees'4^"Sbor" c | d4. g,8 | c8. bes16 aes8 g | f4 c |
c'4 c | bes8[( g c]) bes | aes8. aes16 g8 f | c'4 g-. |
ees'4 c | d4. g,8 | c8. bes16 aes8 g | f4 c |
c'4 c | bes8[( g c]) bes | aes8. aes16 g8 f | c'4 r \bar "|."
}

text = \lyricmode {
Vzpo -- mí -- náš si, ka -- ma -- rá -- de mi -- lý,
jak náš pluk šel přes hra -- ni -- ce dál,
při -- šli k~nám a: „ka -- ma -- rá -- di mi -- lí,
je -- li Sta -- lin zdráv?“ se kaž -- dý ptal. Ba!
Při -- šli k~nám a „ka -- ma -- rá -- di mi -- lí,
je -- li Sta -- lin zdráv?“ se kaž -- dý ptal.
}

accompaniment = \chordmode {
ees2 c:m g:m c:m
f2:m bes bes ees
c2:m g:m f:m f:m
aes2 ees f4:m g:7 c2:m
c2:m g:m c:m f:m
f2:m ees f4:m g:7 c2:m
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
        \midi { \tempo 4=104 }
}
