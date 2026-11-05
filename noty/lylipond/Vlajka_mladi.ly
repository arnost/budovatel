\version "2.24.0"
\header {
        title = "Vlajka mládí"
        composer = "M. Hroněk"
        poet = "Kupka"
}

melody = {
        \clef treble
        \time 4/4 \key f \major \tempo 4=100
d'4 e'8 f' g'4 a'8 g' | f'4 e'8 f' d'4 c' |
a4 c'8 f' fis'4 fis'8 fis' | g'4 g'8 f' e'4 ees' |
d'4 d'8 d' c'4 c'8 d' | e'4 f'8 g' a'8( e') d'( cis') |
d'4 e'8 f' g'4 gis' | a'2( c'') \bar "||"
c''2 a'4 f' | f''2 d'' | c''4 a' c'' d'' | a'2 g' | f'4 g'8. a'16 c''4 a' |
bes'4 c''8. d''16 f''4 d'' | c''2 a'4 f' | g'4 a' bes'( b') | c''2 a'4 f' |
f''2 d'' | c''4 a' c'' d'' | a'2 g' | f'4 g'8 a' c''4 a' |
bes'4 c''8 d'' f''4 d'' | c''4 a'8 f' g'4 c'' | f''2. r4 \bar "|."
}

text = \lyricmode {
Kve -- tou -- cí ja -- blo -- ně na ja -- ře vo -- ní,
ze -- mě se ze -- le -- ná, smích dě -- tí zvo -- ní,
jak ži -- vot má -- jo -- vý mla -- dě ky -- pí -- cí
zní na -- ší prá -- ce zpěv.
Svou vlaj -- ku mlá -- dí na sto -- žár zve -- dá -- me,
od So -- ko -- lo -- va až do Šang -- ha -- je
ví -- těz -- ně bu -- de vlát.
Své ze -- mi krá -- sné věr -- nost pří -- sa -- há -- me,
ve kte -- ré svor -- ně děl -- ník a rol -- ník
jdou ště -- stí do -- bý -- vat.
}

accompaniment = \chordmode {
d2:m g2:m | d2.:m c4:7 | f2 d2:7 | g1:m |
d1:7 | a1:7 | d2:m g4:m e4:7 | a1:7 |
f1 | bes1 | f2 d2 | c1:7 | f1 |
bes1 | f1 | c1:7 | f1 |
bes1 | f2 d2 | c1:7 | f1 |
bes1 | f2 c2:7 | f1 |
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
        \midi { \tempo 4=100 }
}
