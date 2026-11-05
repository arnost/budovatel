\version "2.24.0"
\header {
        title = "Už vyšlo slnko"
        subtitle = "Pochodová pieseň"
        composer = "Ján Pöschl"
        poet = "Pavol Štefánik a Jarko Elen"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Tempo di marcia" 4=112
r4 c4 \bar "||"
f4 g | a bes | c d | c a | bes a | g f | g2 | r4 c,4 |
f4 g | a bes | c f | c d | e c8 g | a4 b! | c2 |
r4 c4 \bar "||"
d2 | f4 e8 d | c8 bes a bes | c4 f, |
d'2 | f4 e8 d | c8 bes a bes | c4 c |
d4 d | d d8( c) | bes8 a g a | bes4 bes |
a8 g f a | g4 a8 g | f2 | f'8-^ r8 r4 \bar "|."
}

text = \lyricmode {
Už vy -- šlo sln -- ko nad ob -- lak, nám všet -- kým svi -- tol deň.
Už k~prá -- ci vo -- lá, dá -- va znak: Ej, vpred! Za -- žni po -- cho -- deň!
Spev náš vzlie -- ta jak ho -- lu -- bi -- ca z~úst,
stroj náš tú -- ži s~ním pie -- seň prá -- ce húsť.
Tá pie -- seň zo -- rí, stro -- jov, har -- mo -- ník
zve v~pra -- co -- vi -- ská nás, do fa -- brík!
}

textB = \lyricmode {
Nech ho -- ria v~srd -- ci pla -- me -- ne, nech na -- dý -- me sa hruď,
kto rád máš prá -- cu, nad -- še -- nie: Ej, vpred! V~na -- šom ši -- ku buď!
}

textC = \lyricmode {
Nám pa -- trí blíz -- ka bu -- dúc -- nosť, čo z~prá -- ce vy -- ras -- tie,
nám prá -- ca je len pre ra -- dosť: Ej, vpred! Bi sa za šťas -- tie!
}

accompaniment = \chordmode {
s2
f2 f4 bes f bes f2 f f c c
f2 f f f:m c d4:m g:7 c2
s2
bes2 bes f f bes bes f f
d:7 d:7 g:m g:m f c:7 f f
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
        \midi { \tempo 4=112 }
}
