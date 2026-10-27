\version "2.24.0"
\header {
        title = "Drug Tito"
        poet = "Vladimir Nazor"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=112
\partial 4 d8. d16 |
g4. d8 g4 a | b g r2 |
fis8. g16 a8 g fis[( g]) fis[( e]) | e4 d r r8 d |
c'8 c4 b8 a4 d8[( c]) | b4 g2 b8 b |
a4. a8 b4 cis | d d2 r8 c!8 |
b8 b4 a8 g4 fis | e a r a8. a16 |
a4. a8 b4 cis | d d r \bar "|."
}

text = \lyricmode {
Sve, što bi -- lo pod pe -- pe -- lom
na dnu na -- ših sr -- ca skri -- to,
u vat -- ru je raz -- bu -- kta -- o
drug nam Ti -- to, Ti -- to, Ti -- to
u vat -- ru je raz -- bu -- kta -- o
drug nam Ti -- to, Ti -- to, Ti -- to.
}

accompaniment = \chordmode {
\partial 4 d4
g1 g1 d2 a2 d1
d1:7 g1 a1:7 d1
g1 c1 a1 d2.
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
        \midi { \tempo 4=112 }
}
