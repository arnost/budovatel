\version "2.24.0"
\header {
        title = "Zdvihni se, zdvihni"
        poet = "Karel Havlíček Borovský"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo 4=100
fis4 fis8 g | b8[( a]) a[( fis]) | a8 g e g | fis4 r |
fis4 fis8 g | b8[( a]) a[( fis]) | a8 g e g | fis4 r |
e8 e e fis | a a g e | fis fis fis g | b b a fis |
a8. e16 fis8 g | a a fis' d | e e cis a | fis'8[( d] a4) |
fis8. e16 fis8 g | a a fis' d | e e cis a | d4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Zdvih -- ni se, zdvih -- ni, sta -- rý če -- ský lve,
an -- dě -- lé trou -- bí k~vál -- ce do kr -- ve.
Slá -- vy brá -- na se od -- my -- ká, táh -- nou sva -- tí od Bla -- ní -- ka.
Hr! na vra -- ha, hr! na vra -- ha! Ve -- de nás Pra -- ha! __
Hr! na vra -- ha, hr! na vra -- ha! Ve -- de nás Pra -- ha!
}

accompaniment = \chordmode {
d2 d a:7 d
d2 d a:7 d
a2:7 a:7 d d
a2:7 d a:7 d
d2 d a:7 d
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
