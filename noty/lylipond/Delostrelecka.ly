\version "2.24.0"
\header {
        title = "Dělostřelecká"
        composer = "Vít Nejedlý"
        poet = "Jan Mareš"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \major \tempo "Pochodem" 4=100
\partial 2 r8. e16 d8. c16 |
g'4 g r8. c16 b8. a16 | e4 r r8. e16 f8. a16 |
d,4 d r8. d16 c8. b16 | g'4 r r8. e16 d8. c16 |
g'4 g r8. fis16 g8. a16 | b4 r r8. fis16 g8. b16 |
b4 b d8. c16 b8 a | g8 r r4 r2 \bar "||"
e4 c8 d e e d c | g'4 g g r |
a4 f8 g a a g f | c'4 c c8 r16 c16 b8 a |
gis2 r8. a16 g!8 f | e4 r r8. d16 e8. f16 |
g4 a g d | g2 ~ g8 r16 c16 b8 a |
gis2 r8. a16 g!8 f | e4 r r8. d16 e8 f |
g4 a b d | c4 r r2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pě -- cho -- ta na -- še jde smě -- le vpřed,
za ní děl moc -- ných že -- lez -- ný sled.
Pě -- šá -- ků ži -- vot chrá -- ní náš pot,
na je -- jich ce -- stě sme -- tem kaž -- dý DOT.
Děl na -- šich hlav -- ně mí -- ří na zá -- pad,
hroz -- ný jich hlas už le -- tí od Kar -- pat.
V~du -- ně -- ní svém zvě -- stu -- je všem,
že my už jdem', že my už jdem',
v~du -- ně -- ní svém zvě -- stu -- je všem,
že my už jdem', že my už jdem'.
}

accompaniment =\chordmode {
\partial 2 c2
c2 f a1:m
d1:m g:7
c1 g
g2 d:7 d1:7
c1 g
f1 c
e2:7 f a d:m
g1:7 c
e2:7 f a d:m
g1:7 c
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
