\version "2.24.0"
\header {
        title = "Dal příkaz soudruh Stalin"
        composer = "M. Krasev"
        poet = "S. Michalkov, český text Ludvík Kundera"
}

melody = \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Pochodovým tempem" 4=108
f4\f c | d4. g8 | e4 c | a'4 f \breathe | f4 c | d4. e8 | f4 g | a2 \breathe |
d,4 d | bes'4. g8 | f4 g | a4 f \breathe | a4 bes | c a | g8 f g a | f2 \breathe |
d4 d | bes'4. g8 | f4 g | a4 f \breathe | a4 bes | c a | g8 f g a | f2 |
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Sou -- druh Sta -- lin ro -- zká -- zal nám: „Za mnou vzhů -- ru v~ča -- se zlém!“
Li -- dé šli přes po -- le dál -- ná od fa -- ši -- stů vy -- či -- stit svou zem.
Li -- dé šli přes po -- le dál -- ná od fa -- ši -- stů vy -- či -- stit svou zem.
}

accompaniment = \chordmode {
f2 g:m c:7 f f g:m d4:m g:m a2
bes2 g:m f f d:m f g4:m c:7 f2
bes2 g:m f f d:m f g4:m c:7 f2
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
