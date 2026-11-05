\version "2.24.0"
\header {
        title = "Pieseň pracujúcich"
        composer = "Alexander Moyzes"
        poet = "V. Húska"
}

melody = {
        \clef treble
        \time 2/4 \key f \major \tempo "Pochodom" 4=104
f'4 g' | c' d'8 e' | f'2~ | f'8 r g'4 | a' g'8 f' | bes'4 a' |
g'2 | c'8 r a' bes' | c''4 a' | f' e' | d'2\( |
d''8\) r c'' bes' | a'4 f' | d' e'8 f' | g'2 | c'4( c'8) r |
f'4 g' | c' d'8 e' | f'2~ | f'8 r g'4 | a' g'8 f' |
bes'4 a' | g'2 | c'8 r a' bes' | c''4 a' | f' e' | d'2\( |
d''8\) r c'' bes' | a'4 c'' | f''8 d'' bes' a' | g'2 | f'4 r \bar "|."
}

text = \lyricmode {
Znie pie -- seň ví -- ťaz -- ná,
spev slo -- ven -- ských bo -- jov -- ní -- kov,
čo sa s_ne -- pria -- te -- ľom bi -- li
za voľ -- nosť a česť do -- mo -- vi -- ny.
Znie pie -- seň ví -- ťaz -- ná,
spev slo -- ven -- ských bo -- jov -- ní -- kov;
dnes už po -- chod bo -- ju -- jú -- cich
o -- zý -- va sa v_pies -- ni pra -- cu -- jú -- cich.
}

accompaniment = \chordmode {
f4 bes | c2:7 | f2 | f4 c4:7 | f2 | c4:7 f4 |
c2:7 | c2:7 | f2 | a2:7 | bes2 |
bes2 | f2 | g2:7 | c2 | c2:7 |
f4 bes | c2:7 | f2 | f4 c4:7 | f2 |
bes4 g4:7 | c2:7 | c2:7 | f2 | d4:m a4:7 | bes2 |
bes2 | f4 c4 | d4:m g8:m g8:7 | c2:7 | f2 |
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
        \midi { \tempo 4=104 }
}
