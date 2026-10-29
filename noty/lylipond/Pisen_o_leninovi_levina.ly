\version "2.24.0"
\header {
        title = "Píseň o Leninovi"
        composer = "Zara Leviná"
        poet = "Taťjana Spendiarová, český text Jelena Holečková"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key a \minor \tempo "Mírně" 4=92
e8\p e a4. e8 | d d g[( f e]) d \breathe | e e a4. e8 | d\< d g2\! \breathe |
c8\mf b a4. e8 | d d g[( f e]) d \breathe | c d e4. gis8 | a e a2 \breathe |
c8 b a4. e8 | d d g[( f e]) d \breathe | c\p d e4. gis8 | a e a2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Du -- ben v~plá -- šti z~kvě -- tů cho -- dí, le -- den zlý je, dr -- sný zas.
Na zem vstou -- pil s~jar -- ním kví -- tím, o -- de -- šel, když zu -- řil mráz,
na zem vstou -- pil s~jar -- ním kví -- tím, o -- de -- šel, když zu -- řil mráz.
}

accompaniment = \chordmode {
a2.:m d:m a:m d4:m g2:7
a2.:m d4:m g2 a4:m e2:7 a2.:m
a2.:m d4:m g2 a4:m e2:7 a2.:m
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
        \midi { \tempo 4=92 }
}
