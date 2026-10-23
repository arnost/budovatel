\version "2.24.0"
\header {
        title = "Kdo zlato vydobývá?"
        poet = "J. Most, překlad J. B. Pecka"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Se zápalem" 4=104
\partial 4 c4 | f e f g | f( e) d c | g' fis g a |
f! r r c | g' d g a | c( bes) a g | f c a' g |
f r r f | bes4. a8 g4 f | c'4. c8 c4 r8 c |
c4 c a8 a g f | c'4 r r f, | d'4. d8 e4. d8 |
c2 a4 r8 a | g4. g8 a4 bes | c r r f, |
d'4. d8 e4. d8 | c4( f) a, r8 g | f4. c8 a'4. g8 | f4. r8 r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Kdo zla -- to vy -- do -- bý -- vá, kdo te -- sá ká -- men, kov?
Kdo tká suk -- na a he -- dváb, kdo sta -- ví zdě a krov?
Kdo chléb bo -- há -- čům sná -- šet zná a při -- tom sám jen bí -- du má?
To jsou mu -- žo -- vé prá -- ce, to je náš pro -- le -- tář,
to jsou mu -- žo -- vé prá -- ce, to je náš pro -- le -- tář!
}

accompaniment = \chordmode {
\partial 4 s4 | f1 | f | c:7 |
f | g:m | c:7 | f |
f | bes | f |
f | f | bes |
f | c:7 | c2.:7 f4 |
bes1 | f | f2 c:7 | f2.
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
