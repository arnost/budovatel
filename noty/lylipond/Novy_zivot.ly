\version "2.24.0"
\header {
        title = "Nový život"
        subtitle = "pochod německé demokratické mládeže"
        poet = "český text Vilém Závada"
}

melody = {
        \clef treble
        \time 4/4 \key a \major \tempo "Pochodem" 4=112
\partial 16*5 e'16 a'8. b'16 |
cis''4 cis'' r8. cis''16 d''8. cis''16 |
b'4 b' r8. b'16 cis''8. b'16 |
a'4 a' r8. a'16 b'8. a'16 |
gis'2 r8. e'16 a'8. b'16 |
cis''4 cis'' r8. cis''16 d''8. cis''16 |
b'4 b' r8. b'16 cis''8. b'16 |
a'4 a' a'8. a'16 gis'8. fis'16 |
cis''2 ~ cis''8 r8 e'4 \bar "||"
\mark \markup \italic "Refrén"
a'4 a'8. a'16 a'4 a'8 b' |
cis''8 b' a'8. fis'16 e'4 e'8 fis' |
e'4 b8. cis'16 d'4 cis'8 b |
cis'4 e' ~ e'8 r8 e'8. e'16 |
a'4 a'8. a'16 a'4 a'8 b' |
cis''8 b' a'8. fis'16 e'4 e' |
d''8 b' gis'4 e' fis'8 gis' |
a'4 a' r8. \bar "|."
}

text = \lyricmode {
Náš no -- vý ži -- vot mu -- sí být ji -- ný,
než sta -- rý ži -- vot, než sta -- rý čas.
Ne -- smí být hla -- du, ne -- smí být bí -- dy,
jen do to -- ho, hned dá -- le bu -- dem zas. __
Pojď k~nám, sou -- dru -- hu, ne -- stůj stra -- nou, sou -- dru -- hu,
vždyť boj náš, sou -- dru -- hu, je též boj tvůj. __
Srov -- nej krok, zpří -- ma choď, no -- vou ce -- stou s~ná -- mi pojď,
zá -- le -- ží na to -- bě. Na nás všech.
}

accompaniment = \chordmode {
\partial 16*5 s16*5 |
a1 | e1 | a1 | e2. a8. e16 |
a1 | e1 | a1 | cis2. e4:7 |
a4 d a4. e8 | a4 d a2 | e1:7 | a1 |
a4 d a4. e8 | a4 d a2 | e1:7 | a2 s8.
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
        \midi { \tempo 4=112 }
}
