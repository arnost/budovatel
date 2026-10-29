\version "2.24.0"
\header {
        title = "Píseň mladých brigádníků"
        composer = "Miroslav Barvík"
        poet = "Karel Michal Walló"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \major \tempo "Odhodlaně" 4=108
d4 e8 d | g4 g | e8 d g a | b2 |
g4 fis8 e | a4 g8 a | b4 g | a2 |
d,4 e8 d | g4 g | e8 d g a | b2 |
a4 b8 c | b4 g | e d | g r \bar "||"
\key c \major
\mark "Refrén"
e8 g4 c8 | b a g r | a c4 d8 | g, e r4 |
d4 g8 b | d4 e8 d | b4 a | g r |
g8 c4 e8 | d c b r | a c4 d8 | g, e4. |
r8 g g g | a4 a | c d | e2 |
g,8 c4 e8 | d c b r | a c4 d8 | g, e4. |
r8 g g g | a4 a | c a | c2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
My do -- bře zná -- me cíl, za kte -- rým jdem,
dů -- vě -- ru sou -- dru -- hů ne -- zkla -- mem!
A na -- še prá -- ce ta svět pro -- mě -- ní,
so -- ci -- a -- lis -- mus, to jsme my!
Sta -- ví -- me sil -- ni -- ce, sta -- ví -- me ces -- ty,
na tra -- ti mlá -- de -- že tu -- nel, most!
Sta -- ví -- me pro ra -- dost ži -- vo -- ta štěs -- tí,
sta -- ví -- me lep -- ší bu -- douc -- nost!
Sta -- ví -- me pro ra -- dost, ži -- vo -- ta štěs -- tí,
sta -- ví -- me lep -- ší bu -- douc -- nost!
}

accompaniment = \chordmode {
g2 g g g g a:m7 a:7 d:7
g2 g g b4:7 e:m a:m d:7 g e:m c d:7 g2
c2 g4:7 c d2:m7 c g b4:m e:m d2:7 g
c2 e a4:m f c2 c f d4:m7 g:7 c2
c2 e:7 a4:m f c2 c f d4:m7 g:7 c2
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
