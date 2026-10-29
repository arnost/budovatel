\version "2.24.0"
\header {
        title = "Brigádníci"
        composer = "M. Hynková"
        poet = "M. Chýlková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
f4 f f f | f g a f | g g g g | g a bes g \breathe |
a4 a a a | a f g a | c bes a g | f r r2 \bar "|."
}

text = \lyricmode {
V~řa -- dě pě -- kně po sil -- ni -- ci po -- cho -- du -- jí bri -- gá -- dní -- ci,
v~řa -- dě pě -- kně po sil -- ni -- ci bri -- gá -- dní -- ci jdou.
}

accompaniment = \chordmode {
f1 f g:m c
f1 d:m c:7 f
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
