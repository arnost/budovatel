\version "2.24.0"
\header {
        title = "Tam, kde Orel rozpjal křídla"
        subtitle = "Píseň 129. Orlovské divise"
        composer = "Anatolij Novikov"
        poet = "Sergej Alymov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodovým tempem" 4=112
e4. e8 e4 fis | g4 e c' b | a4 a a e | a2~( a8[ g fis e]) |
d4. d8 d4 e | fis4 d b' a | g4 g g d | g4~ g8 r b2-> |
\mark \markup { \small "SBOR" }
g4. g8 g4 a | b4 e, c' b | c4 c c b | c2~( c8[ b a g]) |
a4. a8 a4 g | a4 d, d' c | b4-> b-> b-> d-> | b4-> d-> b-> g-> \bar "||"
\time 2/4
a8 a b b | a8 a g g | fis4 a | d,4 r |
a'8 a b b | a8 a g g | fis4 e |
\time 4/4
b'2~( b8[ a g fis]) |
e4. e8 e4 fis | g4( e) c' b | a4 a a e | a4 r e'2-> |
d4-> d-> d-> e-> | d4->( c) b a | e'4 e e b | e2~ e4 r \bar "|."
}

text = \lyricmode {
Tam, kde O -- rel roz -- pjal kří -- dla nad ře -- kou O -- kou, __
dlou -- ho nám tam mou -- nil tvá -- ře střel -- ný prach a kouř. Ech!
Ce -- lý mě -- síc žád -- ný z~ho -- chů o -- ko ne -- za -- vřel, __
šli jsme sto -- krát do ú -- to -- ku, hej! a na O -- rel! Ech! _ _
Ry -- bám ří -- čku, dom -- kům stří -- šku, nám zas boj.
Ví -- těz -- ství je na kra -- jí -- čku, hu -- rá v~boj! __
Vpřed na or -- lích kří -- dlech jak bou -- ře že -- ne se, ech,
sto -- de -- vět -- a -- dva -- cá -- tá or -- lí di -- vi -- se!
}

accompaniment = \chordmode {
e1:m | e1:m | a1:m | a1:m |
d1 | d1 | g1 | g2 b2:7 |
e1:m | e1:m | a1:m | a1:m |
d1 | d1 | g2. d4 | d1 |
d4 g4 | d4 a4 | d4 a4 | d2 |
d4 g4 | d4 e4:m | d4 a4 |
b1 |
e2.:m b4 | e1:m | a1:m | a2:m c2 |
g2. c4 | a2:m b2:7 | e1:m | e1:m |
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
