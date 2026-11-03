\version "2.24.0"
\header {
        title = "Kupředu, kupředu!"
        composer = "Jan Fadrhons"
        poet = "B. Tyleček"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \minor \tempo "Pochodem" 4=112
d4 d8 e | f4 f | g8 f e f | e4 d |
f4 f8 g | a4 bes | a8 g f8. g16 | a4 r |
\repeat volta 2 {
d4 c8 c | bes4. g8 | c8 d c bes | a4 d, |
g4 f8 e | a4 d, | a'8 g f e | d4 r |
}
\key d \major
d2^"Refrén" | a4 d | r4 e | d4 e | fis8 a a4 |
b8 a4 fis8 | e4 r | R2 | e2 | b4 e |
r4 fis | e4 fis | g8 b b4 | cis8 b4 g8 | fis4 r |
r4 a8 a | d4. cis8 | e8 d cis b | b2 |
b8 r cis d | cis4 gis | b8 b a gis | cis4 cis |
r4 a,8 a | d4 a8 d | e4 d8 b' | a4 r |
r4 a8 b | a4 g | b4 cis | d8 r r4 | R2 \bar "|."
}

text = \lyricmode {
Z~dý -- mu a tro -- sek ve vá -- leč -- né se -- či
ro -- dil se no -- vý, spra -- ved -- li -- vý svět,
ne -- přá -- tel tvr -- ze dr -- ti -- li jsme zte -- čí,
ku -- pře -- du šli a a -- ni o krok zpět!
Ku -- pře -- du, ku -- pře -- du, s~li -- do -- vou ar -- má -- dou jdem!
Ku -- pře -- du, ku -- pře -- du, brá -- nit svou vlast pro -- ti všem.
Na -- še pí -- seň moc -- ně za -- bu -- rá -- cí,
svo -- ji si -- lou svě -- tem za -- ky -- má -- cí.
Ku -- pře -- du, stá -- le vpřed, ni -- kdy zpět,
pod vo -- jen -- ským pra -- po -- rem!
}

accompaniment = \chordmode {
d2:m | d2:m | g2:m | a4:7 d4:m |
d2:m | d4:m g4:m | c2:7 | f4 a4:7 |
\repeat volta 2 {
d4:m d4:7 | g2:m | c2:7 | f4 d4:7 |
g2:m | d2:m | g4:m a4:7 | d2:m |
}
d2 | d2 | a2:7 | a2:7 | d2 |
d2 | a2:7 | e4:m b4:7 | e2:m | e2:m |
b2:7 | b2:7 | e2:m | a2:7 | d2 |
a2:7 | d2 | d2 | g4 b4:7 |
e2:m | cis2:7 | cis2:7 | fis2 |
a2:7 | d2 | a4:7 d4 | a2:7 |
d2:7 | g2 | a2:7 | d2 | s2 |
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
