\version "2.24.0"
\header {
        title = "Hej, ty pole širé"
        subtitle = "Bulharská partyzánská píseň"
        composer = "harmonisoval Asen Diamandiev"
        poet = "český text Josef Urban"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key e \minor \tempo "Volně" 4=80
b2 e, | c'4 b a g | fis2 c' | b4 a g fis | e1 |
e2 e' | d4 c b a | g g a a | b1 |
g'2 e | fis4 e d c | a a c c | b2 e,\fermata |
a2 c | b4 g g fis | e2 r \bar "|."
}

text = \lyricmode {
Hej, ty po -- le ši -- ré, po -- le ze -- le -- na -- vé, hej!
Bal -- ká -- ne ty rod -- ný, Bal -- ká -- ne ty náš,
co jsi mu -- ky zku -- sil, ko -- lik ta -- jů skrý -- váš,
rod -- ný Bal -- ká -- ne ty náš!
}

accompaniment = \chordmode {
e1:m a:m fis:m7 b e:m
c1 d g2 d:7 g1
e1:m a:m a:m e:m
a1:m e2:m b:7 e1:m
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
        \midi { \tempo 4=80 }
}
