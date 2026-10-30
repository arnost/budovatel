\version "2.24.0"
\header {
        title = "Píseň mladých kozáků"
        composer = "A. Lifšic"
        poet = "F. Kanatov, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Pochodem" 4=112
f4 g a d | a8([ g]) f([ e]) f4 d | d'4 d d c8([ bes]) | c2 a4 r |
bes4 bes d c8([ bes]) | d4 d a a | g g f8([ g]) e4 | d2 d'4 r |
d4 d f e8([ d]) | f2 c4 r | bes4 bes d c8([ bes]) | d2 a4 r |
bes4 bes d c8([ bes]) | d4 d a a | g g f8([ g]) e4 | d2 d'4 r \bar "|."
}

text = \lyricmode {
Tam za Do -- nem, ře -- kou ši -- rou,
ze -- le -- ný dub sto -- jí,
lou -- čí se tam ko -- zák mla -- dý
s~mi -- lou dív -- kou svo -- jí.
Aj -- da, aj -- da, aj -- da,
aj -- da, aj -- da, aj -- da!
Lou -- čí se tam ko -- zák mla -- dý
s~mi -- lou dív -- kou svo -- jí.
}

accompaniment = \chordmode {
d1:m | d1:m | bes1 | f1 |
g1:m | d1:m | g2:m a2:7 | d1:m |
bes1 | f1 | g1:m | d1:m |
g1:m | d1:m | g2:m a2:7 | d1:m
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
