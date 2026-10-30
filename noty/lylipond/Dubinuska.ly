\version "2.24.0"
\header {
        title = "Dubinuška"
        composer = "ruská lidová"
        poet = "český text Josef Urban"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \minor \tempo "Pomalu" 4=66
        \partial 4 f8 aes8 |
        c4 c8. c16 | c4 bes8 aes8 | c4 c8. c16 | c4 f,8 f8 | des'4 bes8 bes8 | bes4 aes8 bes8 | c4 c4 |
        r4 c8 des8 | bes4 bes8 c8 | aes4 aes8 bes8 | g4 g8 aes8 | f4 c8 c8 | g'4 e8. c16 | g'4 aes8. e16 | g2 |
        f8[( g8 aes8 bes8]) | c4. ees8 | des8( c8) bes8 aes16[( bes16]) | c4 f,4 |
        c'4. ees8 | des8 c8 bes8 aes16[( bes16]) | c8 c8 f,8 des'8 | c4 f,8 des'8 | c4 f,8 f8 | f'2 | f,8 r8 \bar "|."
}

text = \lyricmode {
        Mno -- ho pís -- ní jsem dřív do -- ma slý -- chá -- val znít,
        v~nich se ná -- ro -- da smích s~ho -- řem stří -- dá,
        jed -- na z~nich věč -- ně však bu -- de v~mé my -- sli žít,
        tu si zpí -- vá jen děl -- ní -- ků tří -- da. __
        Ech, du -- bi -- nu -- ško, dál jen.
        Ech, ty ze -- le -- ná, již sa -- ma pojď.
        Jen ráz -- ně! Jen ráz -- ně! Již táh -- nem!
}

accompaniment = \chordmode {
        \partial 4 s4 |
        f2:m | c2:7 | f4:m c4:7 | f2:m | bes2:m | c2:7 | f2:m |
        f2:m | bes2:m | f2:m | c2 | f2:m | c2:7 | c2:7 | c2:7 |
        f2:m | f2:m | bes2:m | f2:m |
        f2:m | bes2:m | f4.:m bes8:m | f4.:m bes8:m | f2:m | f2:m | f8:m s8
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
        \midi { \tempo 4=66 }
}
