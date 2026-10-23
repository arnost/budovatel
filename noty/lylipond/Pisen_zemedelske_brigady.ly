\version "2.24.0"
\header {
        title = "Píseň zemědělské brigády"
        composer = "J. Stanislav"
        poet = "František Kubr"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \major \tempo "Volným pochodem" 4=96
\repeat volta 2 {
a4 fis8 a | d cis b4 | a fis8 a | b a g4 | fis d | g8 fis e4 | d r | R2 |
}
\time 4/4
\mark "Refrén"
a'4 fis8. g16 a8 b a r | a4 fis8. g16 a8 b a r | a4 d b8 a g4 | a r r2 |
a4 fis8. g16 a8 b a4 | a fis8. g16 a8 b a4 | a d8 b a4 g | fis r r2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Zpí -- vej -- te, skři -- va -- ni, se -- ká -- čům vy -- zvá -- ní:
ko -- sy na ra -- me -- na!
Zpí -- vej -- te mo -- to -- ry, o -- rej -- te trak -- to -- ry,
pěk -- ně do hlu -- bo -- ka.
Vy -- ros -- te o -- se -- ní, v~chle -- ba se pro -- mě -- ní,
od dneš -- ka do ro -- ka.
}

textb = \lyricmode {
Než slun -- ko za -- svit -- ne, o -- cel se za -- kmit -- ne,
jak šav -- le ta -- se -- ná.
}

accompaniment = \chordmode {
\repeat volta 2 {
d2 g d4 b:7 e2:m b:m a:7 d s
}
d1 d d2 g d1
d1 d d2. a4:7 d1
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
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
