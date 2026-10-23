\version "2.24.0"
\header {
        title = "Genius lidstva"
        composer = "podle nápěvu A. V. Žitka"
        poet = "Leopold Kochmann"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Mírně" 4=76
c4 d8 e | g8[( f]) f4 | g8 c4 bes8 | a8[( g]) f[( e]) |
d16[( e]) f4 d8 | c8[( f]) f4 | g8[( a]) bes e, | f8[( a]) c4 |
d,16[( e]) f4 d8 | c8[( f]) f4 | g8[( a]) bes e, | g8[( f]) f4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ge -- ni -- us lid -- stva ve -- de nás k~bo -- ji.
Za vol -- nost dra -- hou, kdo se při -- po -- jí?
Za vol -- nost dra -- hou, kdo se při -- po -- jí?
}

accompaniment = \chordmode {
c2:7 | f | c:7 | f |
bes | f | c:7 | f |
bes | f | c:7 | f |
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
        \midi { \tempo 4=76 }
}
