\version "2.24.0"
\header {
        title = "Otwarte okna"
}

melody =  \relative c' {
        \clef treble
        \numericTimeSignature \time 4/4 \key f \major \tempo "Pochodem" 4=112
f4 f8.[ f16] f4 c | d4 e8.[ g16] f4 r |
c4 d8[ e] f4 a8.[ a16] | g2 g4 r |
g4 g8.[ g16] g4 d | g4 a8.[ bes16] g4 r |
c4 c8.[ c16] c4 g8[ a] | f2 f4 r |
\repeat volta 2 {
d'4 d8.[ d16] bes4 d | c4 c8.[ c16] a4 r |
bes4 bes8.[ bes16] g4 bes | a2 a4 r |
f4 f8.[ f16] f4 c | d4 f8.[ bes16] d4 r |
c4 f,8.[ g16] a4 c,8.[ a'16] | g2 f4 r |
}
}

text = \lyricmode {
Z~fa -- bryk na po -- la ze wsi do miast,
wsę -- dzie gdzi tro -- sky i smut -- ki
rwie się do sło -- nca, rwie się do gwiazd,
syg -- nal har -- cer -- skiej po -- bud -- ki.
Ot -- war -- te ok -- na w~sze -- ro -- ki swiat,
ot -- war -- te oc -- zy mło -- de,
ot -- war -- te ser -- ca, każ -- dy nam brat,
ra -- dość nie -- sie -- my swo -- bo -- dę.
}

accompaniment = \chordmode {
f1 c2:7 f2
f1 c1
g1:m g4:m \parenthesize d4 g2:m
c1 f1
\repeat volta 2 {
bes1 f1
c1 f1
f1 bes1
f1 c2 f2
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
        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
