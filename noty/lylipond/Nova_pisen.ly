\version "2.24.0"
\header {
        title = "Nová píseň"
        composer = "nápěv podle písně J. Vorla „Že peníze světem vládnou“"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo 4=100
g8 g a fis | g8 d g b | a8 a d d | b4 r |
g8 g b g | e8 e c' a | fis8 d e fis | g4 r |
a8 a a a | b8 a fis d | a'8 a a a | b8 a fis d |
a'8 a d, r | a'8 a d, r | a'8 a a a | d,4 r8 d'8 |
c8 b c a | b4 r8 d | c8 b c a | b4 r8 e |
d4 r8 e | d4 r8 e | d8 c b a | g4 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Přij -- de -- li vám, mi -- lí brat -- ři, ňá -- ký šlech -- tic vstříc,
ne -- dě -- lej -- te mu po -- klo -- ny, ja -- ko jin -- dy víc;
před bo -- hem jsme všich -- ni stej -- ní, proč -- pak to tak v~svě -- tě ne -- ní,
šlech -- ti -- ce, lu -- pi -- če nech -- ce -- me ví -- ce:
Jen se nic ne -- děs -- te, a hned ho o -- běs -- te,
jen ho, jen ho, jen ho hned o -- běs -- te!
}

accompaniment = \chordmode {
g2 g d:7 g
g2 c4 a:m d2:7 g
d2 d d d
d2 d d d
d2 g d:7 g
g2 g d:7 g
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
