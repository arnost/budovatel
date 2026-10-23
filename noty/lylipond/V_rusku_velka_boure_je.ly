\version "2.24.0"
\header {
        title = "V Rusku velká bouře je"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key c \major \tempo "Pochodem" 4=108
c4 g e c | g'8 g g4 g8 g g4 |
d'4. b8 g g a g | c4 c8 c c4 r | g g c c |
d d g r | e e g, d' | c b c r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
V~Rus -- ku vel -- ká bou -- ře je, (bou -- ře je,)
ni -- hi -- lis -- ta vzdo -- ru -- je. (vzdo -- ru -- je!)
Po -- li -- ci -- e ca -- ro -- va je už ce -- lá bez -- hla -- vá.
}

accompaniment = \chordmode {
c1 | c |
g:7 | c | c |
g:7 | c2 g:7 | c1 |
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
