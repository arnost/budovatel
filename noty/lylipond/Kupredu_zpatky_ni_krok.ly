\version "2.24.0"
\header {
        title = "Kupředu, zpátky ni krok!"
        composer = "Jan Seidel"
        poet = "Bedřich Bobek"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \major \tempo 4=108
d4 d8 e f4 r8 e | d8 e f g f4 c |
f4 a8 b c4 a | c8 b a g a4. r8 |
c4 c8. d16 e4 e | d8 c bes d c4 a |
bes8 a g bes a4 f | g8 f e a d,4. r8 |
d4 d8 e f4 r8 e | d8 e f g f4 bes, |
f'4 a8 b! c4 a | c8 b a g a4. r8 |
c4 c8. d16 e4 e | d8 c bes d c4 a |
bes8 a g bes a4 f | g8 f e a d,4. r8\fermata \bar "||"
a'2^"Refrén" d4 d | cis2 a | b4 a g b | fis2 e4 r |
d4 fis8 a d4 d | cis8 b a b cis4 r |
e2 cis4 b | a4 r r2 | e'2 cis4 b | a4 r r2 |
d4 d8. d16 b!4 g | a4. g8 e2 | d'4 d8. d16 b4 cis | d4. r8 r2 |
b4 b8 cis e d cis b | a4. g8 fis2 |
e4 b' cis d | e2( a,4) r |
a2 d4 d | cis2 a | b4 a g b | a4. r8 r2 |
\repeat volta 2 {
a8 r16 d d8 r e-> d4. | b8 r16 d d8 r e-> d4. |
a2 b4 cis | d8 r r4 r2 |
}
}

text = \lyricmode {
\set stanza = "1."
Už roz -- vil čas a vo -- ní na -- dě -- je -- mi,
svo -- bo -- dy slun -- ce pr -- ší z~o -- bla -- ků,
vpřed, sou -- dru -- zi, hle, za -- slí -- be -- nou ze -- mi,
kde už ne -- ní pá -- nů, a -- ni že -- brá -- ků!
Kde ne -- be mí -- ru nad hla -- vou se kle -- ne,
kde člo -- věk ne -- ní vl -- kem člo -- vě -- ku,
vpřed, sou -- dru -- zi, k~té ze -- mi za -- slí -- be -- né,
kte -- rou chu -- dák mar -- ně hle -- dal od vě -- ků.
Do hou -- fu srd -- ce, spoj -- me svo -- ji ví -- ru,
muž po -- dle mu -- že, po -- dle bo -- ku bok.
My do -- jde -- me, my do -- jde -- me,
je čas, je čas, by kaž -- dý z~nás svou pa -- ži k~či -- nu zved!
Tam, kde se na -- pře sí -- la v~je -- den ráz,
tam se po -- hne svět. __
Do hou -- fu srd -- ce, v~je -- den pev -- ný blok!
Ku -- pře -- du le -- vá, ku -- pře -- du le -- vá, zpát -- ky ni krok!
}

accompaniment =\chordmode {
d1:m d2:m f d:m a:m d4:m c:7 a2:m
a1:m g2:m f g4:m c:7 f d:m a2:7 d:m
d1:m d2.:m c4:7 f2 a:m a4:m c:7 a2:m
a1:m g2:m f bes d:m a:7 d:m
d2 b:m fis1:m g4 d e2:m fis:m a
d2 b:m fis1:m
a2 cis fis1:m a2 b4:m7 e a1
d4 b:7 e2:m7 a1 d4 b:7 e:m a:7 b1:m
g1 d2 b:m
e1 a:7
d2 b:m fis1:m g2 e:m a1
\repeat volta 2 {
d1 g d2 g4 a:7 d1
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
