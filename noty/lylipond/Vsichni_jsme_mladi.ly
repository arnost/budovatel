\version "2.24.0"
\header {
        title = "Všichni jsme mladí"
        composer = "Ludvík Podéšť"
        poet = "Vítězslav Nezval"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Živým pochodem" 4=120
d8 a4 a8 e'4 fis | d4 a8 a e' fis4 g8 | fis8 fis fis g a4 a8 b | cis8 cis b4 a8 a g fis |
e8 fis g a b4 r8 b | a8 d, d4 r8 e fis g |
\repeat volta 2 {
a8 b4 r8 b cis4 d8 | a8 g4 fis8 e4 a \bar "||"
r8 fis fis g a4 a8 b | a8 g fis g a2 | r8 fis fis g a4 d | cis8. b16 a8 g fis a4 r8 |
cis,4 cis8 d e cis4. | d8 d4 e8 fis8. e16 dis4 | b'8 b4 g8 a4 e' |
}
\alternative {
{ d8-> d-> d-> d-> r2 | R1 | R1 | R1 |
  d,8 a4 a8 e'4 fis | d8 a a a e'4 fis | d8 d e4 fis g | a8 a a a r a g fis |
  e8 e4. g8 g4 g8 | a8 d, d d d e fis g | }
{ \fixed c'' { d8->^"rit." d-> d-> d-> } r2 \bar "|." }
}
}

text = \lyricmode {
Mo -- dré a bí -- lé prů -- vo -- dy mu -- žů a žen,
čer -- ve -- né šá -- teč -- ky pi -- o -- ný -- rů,
mla -- dý je ten, mla -- dý je ten, kdo bo -- ju -- je za šťast -- ný
ži -- vot s~ar -- má -- dou, s~ar -- má -- dou mí -- ru.
Mla -- dý je bás -- ník, jenž zpí -- vá pro mla -- dé,
mla -- dá je pí -- seň, ho -- lu -- bi -- čká či -- stá,
vši -- chni jsme mla -- dí, mě -- šťá -- cký zá -- pa -- de,
mla -- dý je kaž -- dý ko -- mu -- nis -- ta.
Mla -- dý je ten, kdo o -- bno -- vu -- je svět, jenž u -- pa -- dl má -- lem
do roz -- va -- lin, ať je mu šest -- náct, šest -- náct či
se -- dm -- de -- sát let; mla -- dý, ach,
ko -- mu -- ni -- sta!
}

textb = \lyricmode {
\repeat unfold 37 \skip 1
mla -- dý je sou -- druh, je sou -- druh Sta -- lin.
}

accompaniment = \chordmode {
d2 a:7 | d2 a:7 | d1 | a2:7 d | a1:7 | d2 c:7 |
\repeat volta 2 {
b2:7 e:7 | a1:7 |
d1 | d1 | d2. g4 | a2:7 d |
a1:7 | d4. b8:7 b2:7 | e2.:m a4:7 |
}
\alternative {
{ d1 | bes1 | d1 | d1 |
  d2 a:7 | d2 a:7 | d2. a4:7 | d1 |
  a1:7 | d2 c:7 | }
{ d1 }
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
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=120 }
}
