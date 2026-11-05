\version "2.24.0"
\header {
        title = "Hlavu výš!"
        subtitle = "Pochodová píseň"
        composer = "Vladimír Novotný"
        poet = "Eman Prkno"
}

melody =  \relative c'' {
        \clef treble
        \time 6/8 \key d \minor \tempo 4.=104
a4 g8 f4 g8 | a4. f | g2. | e4. r4 r8 | g4 f8 e4 f8 |
g4. a | f4. r4 r8 | R2. | bes4 a8 g4 a8 | bes4. c | a2. | f4. r4 r8 |
e4 fis8 gis4 a8 | b4. cis | a4. r4 r8 | R2. \bar "||"
\key d \major \mark \markup { \italic Refrén }
fis4. a | b4.~ b4 fis8 | a4 g8 a4 g8 | e4. r4 r8 | fis4. a |
b4. r8 r fis | a4 g8 a4 g8 | e2. | d4 e8 fis4 g8 | a8 d,4~ d4. |
g4. a | \tuplet 2/3 { ais8[ b] } r4 r8 | e,4 fis8 gis4 a8 | b8 e,4~ e4. | a4. b |
cis4 b8 a4 g8 | fis4. a | b4.~ b4 fis8 | a4 g8 a4 g8 | e4. r4 r8 |
fis4. a | b4.~ b4 fis8 | a4 g8 a4 g8 | e4. r4 r8 | d4 e8 fis4 g8 |
a4. d, | g4 a8 b4 cis8 | d2. | a4. b | d4. e | d2. | R2. \bar "|."
}

text = \lyricmode {
Mi -- li -- o -- ny zna -- čí sí -- lu,
nás už mi -- li -- o -- ny jsou,
při -- klá -- dá -- me ru -- ce k~dí -- lu,
spja -- ti jed -- nou my -- šlen -- kou:
Hla -- vu výš! při -- dej -- me do kro -- ku,
ne -- jsme již tou tří -- dou o -- tro -- ků.
Všu -- de bou -- řit mu -- sí na -- še slo -- va:
ať to ně -- kdo zku -- sí, dát nám pou -- ta zno -- va.
Hla -- vu výš! při -- dej -- me do kro -- ku,
slun -- ci blíž, jdem ces -- tou po -- kro -- ku.
Od dě -- di -- ny k~měs -- tu, všu -- de na -- po -- řád
bi -- jem sta -- rý řád!
}

textB = \lyricmode {
Pí -- seň na -- še ví -- tě -- zí -- cí
za -- zní -- vá už o -- de všad.
Vsta -- li no -- ví bo -- jo -- vní -- ci,
do na -- šich se dru -- ží řad.
}

accompaniment = \chordmode {
d2.:m d2.:m a2.:7 a2.:7 a2.:7
a2.:7 d2.:m d2.:m g2.:m g4.:m c4.:7 f2. d2.:m
e2.:7 e2.:7 a2.:7 a2.:7
d2. d2. e2.:m a2.:7 d2.
d2. e2.:m a2.:7 d2.:7 d2.:7
g2. g2. e2.:7 e2.:7 a4.:7 g4.
a2.:7 d2. d2. e2.:m a2.:7
d2. d2. e2.:m a2.:7 d2.:7
d2.:7 g2. d2. d2. g4. a4.:7 d2. d2.
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4.=104 }
}
