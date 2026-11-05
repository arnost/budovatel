\version "2.24.0"
\header {
        title = "Veselá harmonika"
        composer = "Serafim Tulikov"
        poet = "M. Lapirov, český text L. Kubišta"
}

melody = \fixed c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Ohnivě" 4=120
\repeat volta 3 {
  d8 fis8 a8 fis8 | g8 fis8 e4 | d8 fis8 a8 fis8 | g8 fis8 e4 |
  d8 d8 d8 e16 ( fis16 ) | g8 b8 d'8 cis'16 ( b16 ) |
  d'8-> a8 b8 a16 ( g16 ) | fis16 ( a16 ) e8 d8^\markup { \italic "rit." } ( cis8 ) |
  b,8^\markup { \italic "a tempo" } a8 a8 g16 ( fis16 ) | g8 a8 b4 |
  a,8 g8 g8 fis16 ( e16 ) | fis8 g8 a4 |
  d8 d16 ( e16 ) fis8 d8 | cis8^\markup { \italic "rit." } fis8 a8 cis'8\fermata |
  b8 a16 ( gis16 ) a8 gis16 ( fis16 ) | gis8 cis8 fis4^\markup { \small "3×" } |
}
\mark \markup { \small "Dokončení" }
d8 fis8 a8 fis8 | g8 fis8 e4 | d8 fis8 a8 fis8 | g8 fis8 e4 |
d8 d8 d8 e16 ( fis16 ) | g8 b8 d'8 cis'16 ( b16 ) |
d'8-> a8 b8 a16 ( g16 ) | fis8-- a8-- d'4-> \bar "|."
}

text = \lyricmode {
Roz -- tá -- hnu, ech, zmáčk -- nu měch,
pro -- běh -- nu se po ba -- sech.
Or -- la po -- znáš po -- dle pe -- ří,
vo -- já -- ka zas po fou -- sech!
Pra -- vou kní -- ry na -- to -- čím,
le -- vou v~ba -- sech za -- bru -- čím,
za -- hra -- ju si o mé mi -- lé,
o roz -- koš -- ném vr -- ko -- či.
Roz -- tá -- hnu, ech, zmáčk -- nu měch,
pro -- běh -- nu se po ba -- sech!
Or -- la po -- znáš po -- dle pe -- ří,
vo -- já -- ka zas po fou -- sech!
}

textB = \lyricmode {
Břeh je pl -- ný o -- blá -- zků,
tam já po -- tkám svou lá -- sku,
chyt -- nu si ji do ná -- ru -- čí,
pře -- ne -- su ji přes láv -- ku.
Če -- kám ja -- ko na strá -- ži,
slun -- ce za chlum za -- chá -- zí.
S~ko -- pre -- ti -- nou v~čer -- ných vla -- sech
že -- žul -- ka má při -- chá -- zí.
}

textC = \lyricmode {
Prs -- ty ráz -- ně ba -- su -- jí,
hvěz -- dy buj -- ně tan -- cu -- jí.
Jak dlou -- ho jsou na tom svě -- tě,
ať to po -- ví, kdo to ví.
Ech, vy ba -- sy, bás -- ky mé,
noč -- ní ro -- sou na -- vlh -- lé,
ech, vy kní -- ry bo -- ha -- týr -- ské
schlíp -- lé, svis -- lé, roz -- plih -- lé!
}

accompaniment = \chordmode {
\repeat volta 3 {
  d2 | a:7 | d | a:7 | d:7 | g | d4 a:7 | d4 fis |
  b2:7 | e:m | a:7 | d | d | fis:m | b4:m fis:m | cis4 fis:m |
}
d2 | a:7 | d | a:7 | d:7 | g | d4 a:7 | d8 a:7 d4 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
          \new Lyrics \lyricsto "one" \textC
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
