\version "2.24.0"
\header {
        title = "Rodný Sevastopol"
        composer = "Valentin Makarov"
        poet = "Sergej Alymov, český text Kamil Bednář"
}

melody =  \relative c' {
        \clef "treble_8"
        \time 4/4 \tempo "Široce" 4=84
        \partial 4
e4 |
\time 3/4 e4 a, e' |
\time 4/4 e8.[( d16]) f2~ f8 r16 d16 |
\time 3/4 d4 g, d' |
\time 4/4 d8.[( c16]) e2~ e8 r16 c16 |
\tuplet 3/2 { d8 c a } \tuplet 3/2 { g8 c e } f4~ \tuplet 3/2 { f8 a, b } |
c2.\fermata
\repeat volta 3 {
\clef bass r8 c,8 |
a4 c8 e g4 f8 c |
\time 3/4 \tuplet 3/2 { e8 d a } c4 b8 c |
\time 4/4 a4 c8 f c'4 b8 a |
g8[( a]) c, d e4 r8 e |
g4 f8 e a4 d,8 e |
f4 e8 d g4 c,8 c |
c4 d8 e f4 d8 f |
\time 2/4 a8[( d,]) a'8. c16 |
\time 3/4 b4. \clef "treble_8" g8 \tuplet 3/2 { g8 d a' } |
\time 4/4 g4 g~ \tuplet 3/2 { g8 c( b) } \tuplet 3/2 { a8 g bes } |
\time 3/4 a4 a r8 c,8 |
\time 4/4 \tuplet 3/2 { c'8 b a } b8 g~ g a \tuplet 3/2 { b8 c d } |
e2~ e8 r e4 |
\time 3/4 e4 a, e' |
\time 4/4 e8.[( d16]) f2~ f8 r16 d16 |
\time 3/4 d4 g, d' |
\time 4/4 d8.[( c16]) e2~ e8 r16 c16 |
\tuplet 3/2 { d8 c a } \tuplet 3/2 { g8 c e } f4~ \tuplet 3/2 { f8 a, b } |
c2.\fermata
}
}

text = \lyricmode {
\set stanza = "1."
Ech, ty Čer -- né mo -- ře, ty ši -- ro -- ké mo -- ře,
Se -- va -- sto -- po -- le, lás -- ko ná -- moř -- ní -- ků.
Již nad Kry -- mem sví -- tá -- ní čer -- ván -- kem ho -- ří,
tam nad mo -- řem sou -- mrač -- ná vy -- bled -- la tma
a zá -- ří na vý -- ši -- nách měs -- to hr -- di -- na,
náš Se -- va -- sto -- pol, pý -- cha Čer -- no -- mo -- ří.
Nad zá -- li -- vů a -- zur, nad per -- lo -- vé ho -- ry,
tam vy -- so -- ká v~dá -- li __ plá ma -- já -- ků zář. __
Ech, ty Čer -- né mo -- ře, ty ši -- ro -- ké mo -- ře,
Se -- va -- sto -- po -- le, lás -- ko ná -- moř -- ní -- ků!
}

accompaniment = \chordmode {
\partial 4
e4:7 |
a2. | a4:7 d2.:m | g2. | g4:7 c2 c8. f16 |
\tuplet 3/2 { d4:m d8:7 } \tuplet 3/2 { c4/g a8:m } d4:m \tuplet 3/2 { d4:m g8:7 } |
c2.
\repeat volta 3 {
c4 |
a2:m d2:m |
d4:m6 a4:m/e e4:7 |
a4:m f4:6 d2:m |
c4/g f8 d8:m6 c2 |
c2:7 f4 d4:m |
g2:7 c4 c8 a8:m |
d1:m |
d2:m |
g4. e8:m6 g4:7 |
s1 |
d2:m f4 |
f4 e2:m g4:7 |
c2 e2 |
a2. | a4:7 d2.:m | g2. | g4:7 c2 c8. f16 |
\tuplet 3/2 { d4:m d8:7 } \tuplet 3/2 { c4/g a8:m } d4:m \tuplet 3/2 { d4:m g8:7 } |
c2.
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
        \midi { \tempo 4=84 }
}
