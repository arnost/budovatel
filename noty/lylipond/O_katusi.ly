\version "2.24.0"
\header {
        title = "O „Kaťuši“"
        subtitle = "Pochodová píseň"
        composer = "Vladimir Zacharov"
        poet = "Michail Isakovskij, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Pochodová píseň" 4=112
\repeat volta 2 {
r2 a8( b) cis( fis) | e2~ e8 d cis b | e4 a,~ a a |
fis'4 fis e8 e d e | \time 2/4 fis8 r g4 |
\time 4/4 fis4. g8 fis4 e | d4 g fis8( e d) cis | d4 cis b8( cis d) fis |
\time 2/4 e8 e e b |
\time 4/4 e8^"Sbor" e d cis b4 a | g'4 fis8 e d r b'4 |
a4. b8 a4 g | fis4 b a8( g fis) e | d8( fis) cis( fis) b,( cis d) fis |
\time 2/4 e8 e e b |
\time 4/4 e8 e d cis b4 a | g'4 fis8 e d r r4 |
}
}

text = \lyricmode {
Mo -- ří dá -- lí, ze -- mě sou -- ší, ech,
kaž -- dou ces -- tou fron -- to -- vou, ech,
stá -- le rus -- ké jdou „ka -- ťu -- ši“,
kro -- kem pád -- ným v~bo -- je di -- vé
jdou, cha, cha, cha, cha, cha, cha, cha, cha, cha, ech!
Stá -- le hroz -- né jdou „ka -- ťu -- ši“,
kro -- kem pád -- ným v~bo -- je di -- vé
jdou. Cha, cha, cha, cha, cha, cha, cha, cha, cha.
}

accompaniment = \chordmode {
\repeat volta 2 {
s1 | e1:7 | a1 |
d2 a2:7 | d4 g4 |
d2. a4:7 | d2 a2 | b4:m fis4 b2:m |
e2:m |
e2.:m a4:7 | a2:7 d4 g4 |
d4. g8 d4 a4:7 | d4 g4 a2:7 | b4:m fis4 b2:m |
e2:m |
e2.:m a4:7 | a2:7 d2 |
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
        \midi { \tempo 4=112 }
}
