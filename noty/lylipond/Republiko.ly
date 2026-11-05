\version "2.24.0"
\header {
        title = "Republiko!"
        composer = "Georgi Dimitrov"
        poet = "Krum Penev, český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Pochodem" 4=112
\set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionMelismaBusy)
\partial 8 d8 |
g4 a8. g16 b4 c8. a16 | e'2 d4 r8 d |
c4 b8. a16 b4 a8. g16 | a2. ~ a8 d, |
g4 a8. g16 b4 c8. a16 | e'2 d4 r8 d |
g4 d8. c16 b4 c8. a16 | g2 ~ g4 r8 b^\markup { \italic "Refrén" } |
b8[ a] g fis e4 a8. g16 | g2 fis4 r8 c' |
c8[ b] a g fis4 d'8. c16 | b2 ~ b4 r8 d |
\repeat volta 2 {
  d4 b8. g16 f'!4 e8. d16 | e2 e4 e8.[ fis16] |
}
\alternative {
  { g4 d8. c16 b4 c8. a16 | d2 ~ d4 r8 d }
  { g4 d8. c16 b4 c8. a16 | g2 ~ g4 r8 \bar "|." }
}
}

text = \lyricmode {
Již po -- ro -- by ú -- tlak se zří -- til,
kdy náš o -- sud mrač -- nem se zdál, __
jen slov o -- hni -- vý pla -- men sví -- til,
když v~boj ne -- rov -- ný lid se dal. __
Teď re -- pu -- bli -- kou svou lid si vlád -- ne,
teď, re -- pu -- bli -- ko, jít k~slá -- vě máš! __
Ať vlast na -- še svo -- bo -- dou mlá -- dne,
v~ní svo -- bod -- ně žít má lid náš. __
Ať svo -- bod -- ně žít má lid náš. __
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
