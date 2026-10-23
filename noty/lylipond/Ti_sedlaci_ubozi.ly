\version "2.24.0"
\header {
        title = "Ti sedláci ubozí"
        composer = "lidová"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key a \major
a8 a4. | e8 e4. | cis'8 cis4. | a2 | b8 cis4. | b8 a4. | gis4 fis | e2 |
d'4 d | fis2 | cis4 cis | e2 | b8 b4. | d8 b4. | a4 gis | a r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ti se -- dlá -- ci u -- bo -- zí, což o -- ni se na -- vo -- zí,
ka -- me -- ne, kře -- me -- ne, bo -- dejž pá -- ny čert ve -- me!
}

accompaniment =\chordmode {
a2 a a a b:m b:m b:m e
d2 d a a b:m b:m b4:m e a2
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
        \midi { \tempo 4=100 }
}
