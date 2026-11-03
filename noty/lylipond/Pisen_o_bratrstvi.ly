\version "2.24.0"
\header {
        title = "Píseň o bratrství"
        composer = "A. Klon"
        poet = "R. Sadowski, český text Erich Sojka"
}

melody =  \fixed c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Volným pochodem" 4=100
\partial 16 e16 |
\repeat volta 2 {
  e4 e8. e16 a4 g8. fis16 | g4 e4 r4 r8. e16 |
  e4 e8. e16 c'4 b8. a16 | g8( a8) b4 r4 r8. b16 |
}
\alternative {
  { b4 e8. e16 d'4 e'8. d'16 | c'8( b8) a4 r4 r8. a16 |
    a4 b8. c'16 b8( fis8) a8 g8 | fis4 fis4 r4 r8. e16 }
  { b4 e8. e16 f'!4 e'8. c'16 | c'8( b8) a4 r4 r8. a16 |
    a4 b8. c'16 b8( fis8) a8 f!8 | e4 e4 r2 \bar "||" }
}
\mark \markup \small \italic "Refrén"
d4 e8. fis16 g8 g16 a16 g4 | a4 fis8.( d16) g4 r4 |
e4 fis8. gis16 a8 a16 b16 a4 | b4 gis8. e16 a4 r8 a8 |
c'8 b8 a8( g8) fis8 a8 g8( e8) | d'4 e'4 b4 r8 b8 |
c'8( a8) a8( g8) fis8 a8 g8 e8 | d'2 r2 |
d4 fis4 g4 r4 | a8 g8 fis4 g4 r4 |
e4 gis4 a4 r4 | b8 a8 gis4 a4 r4 |
d'4 c'8. a16 d'8 d'16 e'16 d'4 | d'4 c'8.( a16) d'4 r8 c'8 |
c'8 b8 a8 g8 g8 a8 g8 e8 | <d d'>2. r4 \bar "|."
}

slokaA = \lyricmode {
My zpí -- va -- li „Vol -- ga rad -- na -- ja,“
my zpí -- va -- li „Wi -- sla ko -- cha -- na,“
my čaj pi -- li "z jed" -- no -- ho šál -- ku
my spo -- leč -- ně há -- ze -- li gra -- nát.
V~těch
}

slokaB = \lyricmode {
\skip 16
pís -- nič -- kách sly -- šel jsi dál -- ku
a ši -- ro -- kost si -- biř -- ských plá -- ní a
\repeat unfold 18 \skip 1
roz -- leh -- lost ste -- pí a le -- sů
a ví -- těz -- ství na do -- sah dla -- ní.
Už sly -- šet jed -- not -- ný krok, ráz -- ný krok,
už sly -- šet ra -- dost -- ný zpěv, ví -- těz -- ný zpěv,
už prou -- dí me -- lo -- di -- e bra -- trs -- ká
jak v~ži -- lách sou -- ro -- zen -- ců krev.
Dej ru -- ku, to -- va -- ry -- ši, se -- vři zbraň,
vrah nás sly -- ší, náš křep -- ký jed -- not -- ný krok,
ráz -- ný krok, náš jas -- ný zpěv, ví -- těz -- ný li -- du zpěv.
}

accompaniment = \chordmode {
\partial 16 s16 |
\repeat volta 2 {
  e2:m a2:m | e1:m | e2:m d2:7 | g1 |
}
\alternative {
  { e1:7 | a1:m | b1:7 | b1:7 }
  { e2:7 g2:7 | a1:m | a2:m b4:7 d4:m | e1:7 }
}
d2 g2 | d2:7 g2 | e2:7 a2:m | e2:7 a2:m |
d2.:7 a4:7 | d2 g2 | a2:m d4 a4:7 | d1 |
d2 g2 | d2:7 g2 | e2:7 a2:m | e2:7 a2:m |
d2:7 bes2 | d2:7 bes2 | d2.:7 a4:7 | d1 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \slokaA
          \new Lyrics \lyricsto "one" \slokaB
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
