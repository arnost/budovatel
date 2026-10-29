\version "2.24.0"
\header {
        title = "Maminkám"
        composer = "Alois Šebestík"
        poet = "Z. Horal"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \major \tempo "Mírně rychle" 4=100
a8 g fis4 | g8 a b4 | a2 | fis4 r |
e8 fis g4 | b4 a8 g | fis2 | e2 \breathe |
fis4 fis | b a | g8 a fis e | d4 r |
e8 e fis g | b b a g \breathe | fis fis g a | d cis b a |
fis4 fis | b a | g8 a fis e | d4 r \bar "|."
}

text = \lyricmode {
Ma -- min -- ky, za va -- ši prá -- ci,
ka -- ždý z~nás vám lá -- skou splá -- cí,
na -- še pí -- seň ať vás po -- tě -- ší.
A -- by by -- lo do -- bře v~svě -- tě,
pra -- cí za mír bo -- ju -- je -- te,
na -- še mam -- ky ze všech nej -- le -- pší.
}

accompaniment = \chordmode {
d2 g d d
a2 a e:7 a
d2 b e4:m a:7 d2
a2 a d d
d2 b e4:m a:7 d2
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
