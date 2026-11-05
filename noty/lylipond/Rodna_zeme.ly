\version "2.24.0"
\header {
        title = "Rodná země"
        composer = "Jan Hanuš"
        poet = "Kamil Bednář"
}

melody = {
        \clef treble
        \time 4/4 \key g \minor \tempo "Pevně, pochodem" 4=108
g'4^\markup \small "Solo" g'8 a' bes'4 g' | d''4 c'' bes' a' |
g'4 g'8. a'16 bes'4 g' | f'4 g' d' r |
g'4 bes'8. c''16 d''4. bes'8 | es''4 d''8( c'') f''4 d'' |
bes'4 g'8 a' c''8. bes'16 a'8 g' | a'4. r8 r2 |
g'4^\markup \small "Sbor" a'8 a' d''4. g'8 | c''4( bes'8.) c''16 f''4 d'' |
c''4 bes'8. c''16 d''4 bes' | a'4 g' a' r |
bes'4 bes'8. c''16 d''4 bes' | f''4 d'' c'' a' |
g'4 g'8 a' c''8. bes'16 a'8 g' | d''2 r \bar "||"
\key g \major
\mark \markup \italic "Refrén"
g'4-> d'8-. g'-. a'4-> g'8-. a'-. | b'4-. d''-. e''8 d'' b' g' |
a'4-> a'8 b' d''4-> b'-. | a'2 r |
c''4 c''8 d'' e''8. d''16 c''4 | b'4-> c''-> cis''-> e''-> |
d''4 b'8 c'' d''4 b' | a'4. b'8 b'2 |
c''4 d''8 c'' g''4 c'' | d''2-> e''-> | g''1 \bar "|."
}

text = \lyricmode {
Nám rod -- ná ze -- mě ži -- vot da -- la,
včas vrá -- tí -- me jí všech -- no zpět,
jsme je -- jí stráž, jsme pev -- ná ská -- la
a z~na -- ších ru -- kou ro -- ste svět.
Vpřed, dě -- ti prá -- ce, stráž -- ci dí -- la,
jež po sta -- le -- tí sta -- věl lid,
v~něm svo -- bo -- da již vě -- ky ži -- la,
my za ni půj -- de -- me se bít!
Ku -- pře -- du, ku -- pře -- du, dě -- ti re -- pu -- bli -- ky,
vlast vo -- lá věr -- nou stráž,
z~nás kaž -- dý se zbra -- ní ji u -- há -- jí,
ať ži -- je věč -- ně ná -- rod náš!
Ať ži -- je věč -- ně ná -- rod náš!
}

accompaniment = \chordmode {
g1:m | d1:7 | g1:m | bes4 g:m d2 |
g1:m | c4:m f:7 bes d:7 | g2:m c4 a:7 | d1 |
g4 d g2 | c4:m es bes2 | c2:m g:m | d4 g:m d2 |
bes2. g4:m | d2:m d:7 | g2:m c4:m a:7 | d1 |
g2 d:7 | g1 | d1 | a1:m |
a2:m d:7 | g4 c:m a2:7 | g1 | d4. g8 g2 |
c1 | g2 c | g1
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
        \midi { \tempo 4=108 }
}
