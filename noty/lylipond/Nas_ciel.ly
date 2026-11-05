\version "2.24.0"
\header {
        title = "Náš cieľ"
        composer = "autor hudby i textu neznámý"
}

melody = {
        \clef treble
        \time 4/4 \key f \major
\partial 4 c'4 |
f'4. e'8 d'4 g' | e'4. d'8 c'4 c' | bes'4 bes' g' c'' | a'2. c'4 |
f'4 f' e' f' | a'4. g'8 g'4 c' | d'4 f' a' g' | f'2. c''4 |
a'4. a'8 g'4 f' | e'4. f'8 g'4 c'' | a'4 f' g'8 f' e' f' | g'2. c'4 |
f'4. e'8 d'4 g' | e'4. d'8 c'4 c' | bes'4 a' g' c'' | a'2. f'4 |
d''4 d'' d'' des'' | c''4. a'8 f'4 f'8 f' | a'4 a' g' g' | c''2. f'4 |
d''4 d'' d'' e'' | f''4. c''8 a'4 f'8 g' | a'4 a' g' g' | f'2. \bar "|."
}

text = \lyricmode {
Náš cieľ je dnes trať mlá -- de -- že, trať lás -- ky k~ná -- ro -- du; trať
bratstva na -- šej jed -- no -- ty, trať ti -- síc mla -- dých rúk. My
mla -- dí chce -- me bu -- do -- vať a po -- môcť vy -- pl -- niť náš plán. Nuž
hor' sa na trať mlá -- de -- že, do ra -- dov na -- šich staň, a
vo -- laj s~na -- mi nad -- še -- ne na -- šej päť -- roč -- ni -- ci zdar, a
vo -- laj s~na -- mi nad -- še -- ne na -- šej päť -- roč -- ni -- ci zdar!
}

accompaniment = \chordmode {
\partial 4 s4 |
f2 bes | c1 | c1:7 | f1 |
d2:m a4 d:m | g2:m c | g2:m c:7 | f1 |
f1 | c2. a4:m | d2:m g:m | c1:7 |
f2 bes | c1 | c1:7 | f1 |
bes2. bes4:m | f1 | f2 c | f1:6 |
bes2. c4:7 | f1 | f2 c:7 | f1
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
