\version "2.24.0"
\header {
        title = "Hej, Slované"
        composer = "polský nápěv"
        poet = "Samo Tomášik"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key d \major \tempo "Se zápalem" 4=132
d8 fis a4 a | a8 a b[( a]) g[( fis]) | e8 e a4. g8 | g4 fis r |
d8 fis a4 a | a8 a b[( a]) g[( fis]) | e8 e a4. g8 | g4 fis r |
\repeat volta 2 {
fis8 e e4 g | g8 fis fis4 a | a8 g g4 b | b4 a r |
d8 d d[( cis]) b[( a]) | b8 b b[( a]) g[( fis]) | e8 e a4. cis,8 | e4 d r |
}
}

text = \lyricmode {
\set stanza = "1."
Hej, Slo -- va -- né! ješ -- tě na -- še slo -- van -- ská řeč ži -- je,
do -- kud na -- še věr -- né srd -- ce pro náš ná -- rod bi -- je:
Ži -- je, ži -- je duch slo -- van -- ský, bu -- de žít na vě -- ky,
hrom a pe -- klo, mar -- né va -- še pro -- ti nám sú vzte -- ky!
}

accompaniment = \chordmode {
d2. d a a4 d2
d2. d a a4 d2
\repeat volta 2 {
a2. d e:m a
d2. g a d
}
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
        \midi { \tempo 4=132 }
}
