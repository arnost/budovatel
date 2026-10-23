\version "2.24.0"
\header {
        title = "Byl jest v Kunštátě"
        composer = "lidová"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key a \major
\repeat volta 2 {
fis4 fis8 gis | a4 gis | a8 gis a b | cis4 cis\fermata |
}
cis4 cis8 dis | e4 cis | b8 a gis a | cis4 b\fermata | cis4 b8 a | gis4 fis\fermata \bar "|."
}

text = \lyricmode {
No -- vi -- ny té -- to pil -- ně po -- slou -- chej -- te,
od na -- ro -- ze -- ní Je -- zu Kris -- ta pá -- na, ta věc ko -- ná -- na.
}

textb = \lyricmode {
ti -- síc let pět set se -- dum -- náct hle -- dej -- te,
}

accompaniment =\chordmode {
\repeat volta 2 {
fis2:m fis4:m e:7 a2 cis2
}
fis2:m cis4:m fis:m b8:m e4. a4 e cis2 cis4 fis:m
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
        \midi { \tempo 4=84 }
}
