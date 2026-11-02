\version "2.24.0"
\header {
        title = "Pochod lidové gardy"
        composer = "Wanda Zieleńczyk"
        poet = "Wanda Zieleńczyk, český text Erich Sojka"
}

melody =  \relative c'' {
        \clef treble
        \numericTimeSignature \time 4/4 \key e \minor \tempo "Pochodem" 4=108
b4 e,8. fis16 g4 fis | e2. r4 |
b'4 e8. dis16 e4 c | b2. r4 |
\repeat volta 2 {
b4 e8. e16 d2 | g,4 c8. c16 b2 |
e,4 b'8. b16 a4 a | e2. r4 |
}
}

text = \lyricmode {
Z~vy -- pá -- le -- ných jdem vsí,
z~měst bí -- da že -- ne nás.
Za hlad a krev, za dět -- ský pláč
už pom -- sty při -- šel čas.
}

accompaniment = \chordmode {
e4:m s b2:7 e1:m
e2:m a:m e1:m
\repeat volta 2 {
e4:m c g2 e4:m a:m e2:m
e2:m a:m e1:m
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
        \midi { \tempo 4=108 }
}
