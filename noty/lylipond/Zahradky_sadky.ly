\version "2.24.0"
\header {
        title = "Zahrádky, sádky"
        composer = "Matvej Blantěr"
        poet = "Michail Svetlov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \minor \tempo "Živě" 4=120
        d8 f e16[( f]) g8 | a4 d | c8 a bes16[\melisma a]\melismaEnd g8 | f4 e8 r |
        d8 f e16[( f]) g8 | a8 f' e d | c8 bes f g | a2 |
        d8 c4 bes8 | c4 d, | bes'8 a4 g8 | a4 d, |
        d8 f e16[( f]) g8 | a8 d, d' bes | a8 a g16[( a]) g8 | d2 |
        d'8 c4 bes8 | c4 d, | bes'8 a4 g8 | a4 d, |
        d8 f e16[( f]) g8 | a8 d, d' bes | a8 a g16[( a]) g8 | d4~ d8 r \bar "|."
}

text = \lyricmode {
        Z~plu -- ko -- vní -- ho dě -- la za stře -- lou jde stře -- la,
        na -- ší rod -- nou ze -- mí že -- ne vál -- ka u -- ra -- gán.
        Za -- hrád -- ky, sád -- ky, pa -- louč -- ky, lou -- čky,
        na -- ší rod -- nou ze -- mí že -- ne vál -- ka u -- ra -- gán.
        Za -- hrád -- ky, sád -- ky, pa -- louč -- ky, louč -- ky,
        na -- ší rod -- nou ze -- mí že -- ne vál -- ka u -- ra -- gán.
}

accompaniment = \chordmode {
        d4:m g4:m | d2:m | f4 g4:m | d4:m a4:7 |
        d4:m g4:m | d2:m | c2:7 | f2 |
        bes2 | d2:7 | g2:m | d2:m |
        d4:m g4:m | d4:m g4:m | d4:m g4:m | d2:m |
        bes2 | c4:m d4:7 | g2:m | d2:m |
        d4:m g4:m | d4:m g4:m | d4:m g4:m | d2:m |
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
        \midi { \tempo 4=120 }
}
