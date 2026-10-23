\version "2.24.0"
\header {
        title = "Povstaň, povstaň, veliké město Pražské"
}

melody = \relative c' {
        \clef treble
        \key c \major
        \time 4/4
        \omit Staff.TimeSignature
e4 e d d | c2 e | g4 g f f | e1 |
d4 a' a a | d,2 e | e4 g g f | f e2. |
c'4 b c a | g f e d | e e g f | e1 \bar "||"
e'4^"R." e d c | b2 g | a4 a c c | b1 |
b4 b d d | c2 a4 a | g g f f | e1 |
d4 e g f | e f e d | a' a g f | e1 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pov -- staň, pov -- staň ve -- li -- ké mě -- sto Praž -- ské,
vše -- ckna ří -- še věr -- ná té -- to ze -- mě Če -- ské,
ry -- tieř -- ské po -- hla -- vie i vše -- ckny mo -- ci zem -- ské
pro -- ti to -- mu krá -- li ba -- by -- lon -- ské -- mu,
ješ -- toť hro -- zí mě -- stu je -- ru -- sa -- lém -- ské -- mu,
praž -- ské ob -- ci i mno -- hé -- mu li -- du věr -- né -- mu.
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \new Voice { \melody }
        \midi { \tempo 4=100 }
}
