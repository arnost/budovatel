\version "2.24.0"
\header {
        title = "Zpíváme si o překrásné zemi"
        composer = "Jan Seidel"
        poet = "Karel Michal Walló, Bedřich Bobek"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Radostně" 4=108
\repeat volta 2 {
c4 f8. g16 a4 f | bes4 a8 g a g ~ g4 | a4 a8. bes16 c4 a | d8 c bes a g4 r |
g4 g8. a16 bes8 a g4 | a4 bes c r | d4 d8. d16 c4 a | bes4 g c2 |
d4 d8. d16 c4 a | bes4 g f r |
}
\key bes \major
bes4 f d f | bes8 f d f bes4 d | es4. d8 c4 bes | c8 bes a g f4 r |
bes4 f d f | bes8 f d f bes4 d | c4 a bes g | f4 r r2 |
d'4 r d r | d8 c bes c d4 bes | es4 d c bes | c8 bes a g f4 r |
d'8 d c d c d c bes | f'4 es d c | bes bes c c | d2 r2 |
d8 d c d c d c bes | f'4 es d c | d d c c | bes4 r r2 \bar "|."
}

text = \lyricmode {
Zved -- ně -- me z~pra -- chu zmá -- me -- ná če -- la
a na -- ber -- me si slun -- ce do zra -- ku.
Ať na -- še pí -- seň se roz -- le -- tí
v~dál po stří -- br -- ném o -- bla -- ku,
v~dál po stří -- br -- ném o -- bla -- ku.
Zpí -- vej pís -- ně o hu -- čí -- cí vo -- dě,
jak se s~ja -- rem va -- lí po kra -- ji.
Zpí -- vej pís -- ně, zpí -- vej o svo -- bo -- dě,
zpí -- vej o má -- ji.
Jdem, jdem, za o -- mlád -- lou krá -- sou,
Ko -- lum -- bo -- vé no -- vých ob -- zo -- rů,
po -- zdrav -- me je svor -- ně pís -- ní
mno -- ho -- hla -- sou, na -- chem pra -- po -- rů,
po -- zdrav -- me je svor -- ně pís -- ní
mno -- ho -- hla -- sou, na -- chem pra -- po -- rů.
}

% Akordy v závorce jsou v tisku alternativní; zobrazují se, ale v MIDI hraje hlavní akord.
alt = #(define-music-function (name) (string?)
  #{ \once \override ChordName.text = \markup #name #})

accompaniment = \chordmode {
\repeat volta 2 {
f4 \alt "(Dm)" f4 f2 | g2:m c2 | f2. d4 | g2:m c2 |
c1 | f4 c4:7 f2 | bes2 c4 d4:m | g4:m c4:7 f2 |
bes2 f2 | g4 c4:7 f2 |
}
bes1. g2:m | c1:m | c2 f2 |
bes4 \alt "(Dm)" bes4 \alt "(Gm)" bes4 \alt "(Dm)" bes4 | bes1 | f4 d4:m g4:m c4 | f1 |
bes2 d2 | g2:m \alt "(B♭7)" g2:m | c4:m g4:m c1 f2 |
bes2 bes2:7 | es1 | g4:m c4:7 f2 | d1 |
g2:m \alt "(B♭7)" g2:m | c4 es4:m es2:m7 | bes2 f2:7 | bes1 |
}

\score {
        <<
          \new ChordNames \accompaniment
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
