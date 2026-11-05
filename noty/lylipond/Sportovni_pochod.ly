\version "2.24.0"
\header {
        title = "Sportovní pochod"
        subtitle = "Z filmu „Brankář“"
        composer = "Isaak Dunajevskij"
        poet = "Vasilij Lebeděv-Kumač, český text Josef Urban"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key as \major \tempo 4=116
\partial 4 c'8. b16 |
c'4 es4 f4 des'4 | c'4 es4 r4 c'8 c'8 |
es'4 des'8 c'8 bes8. as16 f8 g8 | as4 r4 r4 c'8 b8 |
c'4 es4 f4 des'4 | c'4 es4 r4 c'8 c'8 |
es'4 d'8 c'8 b8. c'16 d'8 b8 | c'4 r4 r4 c'8 c'8 |
des'8. c'16 bes8 as8 g4 f8 es8 | es'4-> c'4-> as4-> g8 f8 |
des'4-> bes4-> g4-> f8 es8 | c'4-> as4-> es4 c'8 c'8 |
des'8. c'16 bes8 as8 g4 f8 es8 | es'4-> c'4-> as4-> des'8 es'8 |
f'4 f4 r4 c'4 | as8 r8 r4 r8^\markup { \italic "Refrén" } as8 des'8 es'8 |
f'8 r8 r4 r8 as8 des'8 es'8 | f'8 r8 f'8 r8 f'8 r8 es'8. d'16 |
es'8 r8 r4 r8 es8 as8 c'8 | es'4-> es'4-> es'4-> as8 bes8 |
c'8 r8 r4 r8 c8 f8 as8 | c'4-> c'4-> c'4-> bes8 as8 |
bes8 r8 es'8. es'16 es'8 r8 c'8 as8 | bes8 r8 es'8. es'16 es'8 r8 r4 \bar "|."
}

text = \lyricmode {
Hoj, ty slun -- ce, lij svou zá -- ři, te -- plo
své na -- ší mlá -- de -- ži vždy přej! Všem ať
ži -- vot sví -- tí v~tvá -- ři! Smě -- le
vpřed kaž -- dý k~cí -- li své -- mu spěj! A -- by
tě -- lo i duch tvůj zna -- ly mlá -- dí jas, zna -- ly
mlá -- dí jas, zna -- ly mlá -- dí jas, a -- bys
sná -- šet u -- měl žár ja -- ko chlad -- ný čas, ja -- ko
o -- cel vždy byl! Fyz -- kul -- tu --
ra! Fyz -- kul -- tu -- ra! Hurá! Hurá! Ho -- tov
buď, a jest -- li při -- jde čas, by -- stře
suď, a s~hra -- nic vra -- hů dav za -- hnat
spěj! Cíl vždy znej! Vy -- hrát chtěj! Po -- zor dej!
}

accompaniment = \chordmode {
\partial 4 s4 |
as2 des | as1 | es1:7 | as1 |
as2 des | as1 | c2:m g:7 | c1:m |
bes2:m es:7 | as1 | es1:7 | as1 |
bes2:m es:7 | as2. bes8:m as | des2. es4:7 | as2.. ges8 |
des1 | des2. es4:7 | as1 | as1 |
f1:m | f2.:m bes4 | es2.:7 as4 | es1:7 |
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
        <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=116 }
}
