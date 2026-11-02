\version "2.24.0"
\header {
        title = "Tažní ptáci"
        composer = "Vasilij Solovjov-Sedoj"
        poet = "Alexej Faťjanov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Mírně" 4=88
r4 d8. e16 | d4 d8 e | d d g a | b4 g |
r4 b8 a | g4 b,8 d | a'4 g8 fis | e2~ | e8 r e8. f16 |
e4 e8 f | e4 a8 b | c4 a | r4 c8 b |
a4 c,8 e | g4 fis8 e | d2~ | d8 r d d |
b'4 b8 a | g g fis g | a4 e | r4 e8 e |
a4 a8 g | fis fis e d | b'2~ | b8 r b c |
d c b a | gis e c' b | a4 e | r4 fis8 e |
b b b' g | a8. a16 g8 fis | e4 r |
r4 b'8 c | d c b a | gis e c' b | a4 e | r4 fis8 e |
b b b' g | a8. a16 g8 fis | e4 r \bar "|."
}

text = \lyricmode {
My jsme jak taž -- ní ptá -- ci, my pi -- lo -- ti,
jen že náš ži -- vot má je -- den stín:
na ze -- mi k~že -- ně -- ní ne -- by -- lo kdy,
na ne -- bi se že -- nit ne -- ní s~kým.
To je tím, to je tím, že my jsme let -- ci,
táh -- ne nás, táh -- ne nás to do o -- blak,
Le -- ta -- dla jsou nej -- hlav -- něj -- ší ze všech vě -- cí,
no a děv -- čát -- ka? A děv -- čát -- ka až pak.
Le -- ta -- dla jsou nej -- hlav -- něj -- ší ze všech vě -- cí,
no a děv -- čát -- ka? A děv -- čát -- ka až pak.
}

accompaniment = \chordmode {
s2 | g2 | g | g |
g | g | g | c | c |
a:m | a:m | a:m | a:m |
a:m | d | d | d |
g | g | a:m | a:m |
a:m | d | g | g |
a:m | e | a:m | a:m |
e:m | a4:m b:7 | e2:m |
e:m | a:m | e:7 | a:m | a:m |
e:m | a4:m b:7 | e2:m
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
        \midi { \tempo 4=88 }
}
