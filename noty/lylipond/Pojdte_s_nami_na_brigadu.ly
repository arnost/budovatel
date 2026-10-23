\version "2.24.0"
\header {
        title = "Pojďte s námi na brigádu!"
        composer = "Václav Dobiáš"
        poet = "V. Hofman"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Radostně" 4=120
c4 bes d, e | f8 r16 f f2 c4 | g'8 r16 g g2 c,4 | a'4 gis a f |
c'4 bes d, e | f8 r16 f f2 c4 | g'4 fis g( c) | f,4 r r2 \bar "||"
\key c \major
g4. e16 e g4. e16 e | g4 c g e | d2 g | e4 g8 r16 g c8 r16 c e4 |
g,4. e16 e g4. e16 e | g4 c g e | d2 g | c,2. ~ c8[( c'8)] \bar "||"
\key f \major
c4 bes d, e | f8 r16 f f2 c4 | g'8 r16 g g2 c,4 | a'4 gis a f |
c'4 bes d, e | f8 r16 f f2 c4 | g'4 fis g( c) | f,4 r r2 \bar "|."
}

text = \lyricmode {
Pojď -- te s~ná -- mi na bri -- gá -- du, na bri -- gá -- du, na bri -- gá -- du,
ne -- kou -- kej -- te na pa -- rá -- du, na pa -- rá __ du!
Tra ta da dá ta da, na -- še par -- ta ve -- se -- lá,
tra la la la la tra ta da dá ta da, fů -- ru prá -- ce na -- dě -- lá. __
Pojď -- te s~ná -- mi na bri -- gá -- du, na bri -- gá -- du, na bri -- gá -- du,
ne -- kou -- kej -- te na pa -- rá -- du, na pa -- rá __ du!
}

accompaniment = \chordmode {
c4:7 g2:m c4:7 f1 c2. c4:7 f1
c4:7 g2:m c4:7 f1 c4 dis:dim c2 f1
c1 c g:7 c c c g:7 c2. c4:7
c4:7 g2:m c4 f1 c2. c4:7 f1
c4:7 g2:m c4:7 f1 c4 dis:dim c2 f1
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
        \midi { \tempo 4=120 }
}
