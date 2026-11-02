\version "2.24.0"
\header {
        title = "Oj, vy závoje mlh"
        composer = "Vladimir Zacharov"
        poet = "Michail Isakovskij, český text Josef Urban"
}

melody = {
        \clef bass
        \time 4/4 \key a \major \tempo "Široce, ne příliš rychle" 4=76
r2 r4 fis8 fis8 |
\repeat volta 2 {
b8.( a16) gis16( b16) fis8 e4 b8 cis'8 |
a8( gis16 fis16 e4) a4 a8 b8 |
cis'4 b8 a8 gis8( e8) fis16( e16) b8 |
\time 2/4 e4 \clef treble fis'8 fis'8 |
\time 4/4 d''8.( cis''16) b'8 a'8 e''4 cis''8 b'8 |
a'8.( gis'16) fis'2 a'8 b'8 |
cis''4 cis''8 d''8 b'4 b'8 cis''8 |
fis'4 fis''4~( fis''8 g''8) fis''8 e''8 |
fis''8.( e''16) d''8 fis''8 e''8. fis''16 cis''8 b'8 |
a'8.( gis'16) fis'2 a'8 b'8 |
cis''4 cis''8 d''8 b'4 b'8 cis''8 |
fis''2~ fis''8 r8 \clef bass fis8 fis8 |
}
}

text = \lyricmode {
Oj, vy zá -- vo -- je mlh z~rod -- ných
lá -- nů, oj, vy po -- le i s~mou lu -- či -- nou!
V~ši -- rou dál če -- ty jdou par -- ty -- zá -- nů,
rych -- le po -- cho -- dem vstříc vra -- hu jdou.
Ech, v~ši -- rou dál če -- ty jdou _ par -- ty -- zá -- nů,
ry -- chle po -- cho -- dem vstříc vra -- hu jdou.
Když se
}

accompaniment = \chordmode {
s2. fis4:m |
\repeat volta 2 {
b2:7 e4 e4:7 |
a4 e2:7 a4 |
b2:7 e2:7 |
a4 fis4:m |
b2:m e2:7 |
d1 |
fis2:m cis2:7 |
d4 fis2.:7 |
b2:m e2:7 |
d1 |
fis2:m cis2:7 |
fis1:m |
}
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
        \midi { \tempo 4=76 }
}
