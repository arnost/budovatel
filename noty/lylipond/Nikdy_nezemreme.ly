\version "2.24.0"
\header {
        title = "Nikdy nezemřeme"
        composer = "Karel Reiner"
        poet = "Jan Noha"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Pomalu" 4=66
d4 f8 g c, r r d | g g f e f4 d8 r |
r8 d d d g4. g8 | bes bes a g a4 r |
r8 a bes c d4 c | bes8 bes a g a4 f8 r |
e8 g4 bes8 a4 d | e8 e d cis! d4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Už nas -- tal čas, kdy ti -- še zra -- jí plo -- dy,
kdy čer -- ná zem se v~chle -- ba pro -- mě -- ní,
vy na -- pos -- led jste zře -- li ru -- dé slun -- ce,
ži -- vo -- ta slun -- ce ok -- nem vě -- ze -- ní.
}

accompaniment = \chordmode {
d2:m a4.:m d8:m | g4:m a d2:m |
d2:m g:m | g:m d:m |
d2:m g:m | g:m d:m |
g2:m d:m | a2 d |
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
        \midi { \tempo 4=66 }
}
