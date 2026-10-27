\version "2.24.0"
\header {
        title = "Kovářská"
        composer = "Ludvík Procházka"
        poet = "František Ladislav Rieger"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor \tempo "Rázně" 4=112
c4 g d' g, | es'4 c8[( d]) es4 c | g'4 as g es8[( f]) | g4 as g es |
c'4. c8 bes4 es, | f8[( as]) g[( f]) g4 c, | f4. es8 d4 c | b4. d8 g2\fermata |
g4. c8 b g r4 | g4. c8 b g r4 | es'4 d c g | d4 f g\fermata r8 g8 \bar "||"
\key c \major
c2 r4 r8 g | c8 g e g c4 r8 g | c2 r4 r8 g | c8 g e g c4 r8 e, |
c'4 b8 b a4 gis8 gis | a4 b8 c a4 r8 c | c4 a8 fis c'4 a8 fis | g4 d8 f e4 r8 e |
c'4 b8 b a4 gis8 gis | a4 b8 c a4 r8 c | c2 c,4 r8 c'8 | c2 c,4 r8 c'8 |
c4 b8 a g4 e8 f | g4 d8 e c2 \bar "|."
}

text = \lyricmode {
Ne -- ní mu -- že nad ko -- vá -- ře,
muž on ce -- lý pří -- mé tvá -- ře.
On zná stá -- ti na svých no -- hou,
on též tu -- hé rá -- mě má,
dí -- la věč -- ná, krá -- su mno -- hou
ru -- kou, hla -- vou vy -- ko -- ná.
U nás, u nás jde ráz na ráz,
u nás, u nás jde ráz na ráz,
tu rá -- na na rá -- nu co hrom do -- pa -- dá,
na -- dar -- mo ni -- žád -- nou ko -- vář ne -- za -- dá,
tu rá -- na na rá -- nu co hrom do -- pa -- dá,
na -- dar -- mo ni -- žád -- nou, na -- dar -- mo ni -- žád -- nou ko -- vář ne -- za -- dá.
}

accompaniment = \chordmode {
c2 g c1 c1 es1
as2 es f2 c f1 g1:7
c2 g c2 g c1 c2 g
c1 c c c
a1:m f2 a:m d1 g2:7 c
a1:m f c f
c1 g2:7 c
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
