\version "2.24.0"
\header {
        title = "Oj, u dubu starého"
        composer = "S. Kac"
        poet = "A. Sofronov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key c \major \tempo "Oživeně" 4=120
\repeat volta 5 {
e4. e8 c'8 a | b4 g g | a4. a8 g f | g4 e e |
f4 b c8 b | a4 g g | a4 b c8 d | e2~ e8 r |
cis4 cis f8 e | d4 c b | f4 f8 r d'8 e | c4 b a |
\time 4/4
r8 f4 g8 a4 b | e,2 a4( g8.[ fis16]) | r8 a4 b8 c4 d |
\time 3/4
e2~ e8 r |
cis4 cis f8 e | d4 c b | f4 f8 r d'8 e | c4 b a |
\time 4/4
r8 f4 g8 a4 b | e,2 a4( g8.[ fis16]) | r8 b4 a8 b4 e-> |
}
\alternative {
{ \time 3/4 a,2 r4 }
{ \time 3/4 a'2.~ | a~ | a8 r r4 r\fermata \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Oj, u du -- bu sta -- ré -- ho u stu -- dán -- ky v~pod -- le -- sí
ti -- še hra -- bou ko -- py -- ty ko -- ně hří -- vna -- tí…
Cvá -- la -- li jsme, cvá -- la -- li po -- dle dě -- din, po -- dle vsí,
tam, kde ši -- rou ste -- pí Don se kli -- ka -- tí.
Cvá -- la -- li jsme, cvá -- la -- li po -- dle dě -- din, po -- dle vsí,
tam, kde ši -- rou ste -- pí Don se kli -- ka -- tí. Don.
}

accompaniment = \chordmode {
\repeat volta 5 {
a2.:m e2.:m d2:m g4 c2. d2.:m g2.:7 d2:m g4 c2 c4:7
a2.:7 d2.:m d2:m g4 c2.
d2.:m g4 c2 b2:7 d2.:m g4
c2 c4:7
a2.:7 d2.:m d2:m g4 c2.
d2.:m g4 c2 b2:7 s2 e2:7
}
\alternative {
{ a2.:m }
{ a2.:m a2.:m a2.:m }
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
        \midi { \tempo 4=120 }
}
