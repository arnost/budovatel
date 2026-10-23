\version "2.24.0"
\header {
        title = "Slunce vstává nad Táborem"
        poet = "J. B. Pichl (?)"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo 4=96
g8 g c c | e,8 e g g | c,8 d e f | g8 a g r |
g8 a b a | g8 a b a | g8 a b c | d4 d, | g4 r |
c4 c | d4 d | e4 e | d4 r |
f4 d | e4 c | d4 b | c2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Slun -- ce vstá -- vá nad Tá -- bo -- rem, s~lo -- že vstá -- vá Žiž -- ka lev,
od jed -- no -- ho Tá -- bo -- rí -- ty ke dru -- hé -- mu za -- zněl zpěv:
„Slá -- va to -- bě, Žiž -- ko náš! Slá -- va to -- bě, Žiž -- ko náš!“
}

accompaniment = \chordmode {
c2 c c g
g2 g g d g
c2 g c g
d2:m c g c
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
        \midi { \tempo 4=96 }
}
