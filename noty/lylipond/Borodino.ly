\version "2.24.0"
\header {
        title = "Borodino"
        composer = "úprava M. Jordanovskij"
        poet = "Michail Lermontov, český text Bohumil Mathesius"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key c \major \tempo "Živě" 4=120
        \partial 2 r8 g8 e8 f8 |
        \repeat volta 4 {
                g4 c,4 | c'4 b8( a8) | g4 e4 | r8 c'8 b8 c8 | d2~ | d8 g,8 a8 b8 | c4 c4 |
                r4 c8( b8) | a4 a4 | e4 e4 | a2~ | a8 r8 c8( b8) |
                a4 a4 | b4 b4 | a2~ | a8 g8 e8 f8 | g4 c,4 |
                c'4 b8( a8) | g4 e4 | r8 c'8 b8 c8 | d2~ | d8 g,8 a8 b8 | c4 c4 |
                r4 g4 | c4. c8 | c8 b8 a8 g8 | a4.( g8) | g8 r8 a4 | g4. a8 | b4 a8( b8) | c4.( a8 | c8) r8 d4 |
                c4. c8 | c8 b8 a8 g8 | a4.( c8) | d8 r8 a4 | g4. a8 | b4 a8( b8) |
        }
        \alternative {
                { c2~ | c8 g8 e8 f8 | }
                { c'2~ | c8 r8 r4 \bar "|." }
        }
}

text = \lyricmode {
        Řek -- ně -- te, strý -- čku še -- do -- bra -- dý,
        ho -- ří -- cí Mos -- kvu ne -- vy -- da -- li
        Fran -- cou -- zům le -- hce jen,
        Fran -- cou -- zům leh -- ce jen?
        Pře -- ce se ten -- krát pro ni __ bi -- li
        a po -- ví -- da -- jí ze vší sí -- ly!
        Ru -- so -- vé dar -- mo ne -- věs -- ti -- li
        přec bo -- ro -- din -- ský den. __
        Ru -- so -- vé dar -- mo ne -- vě -- sti -- li
        přec bo -- ro -- din -- ský den! __
        Dva dny jen svou.
}

accompaniment = \chordmode {
        \partial 2 s8 c4. |
        \repeat volta 4 {
                c2 | f2 | c2 | c2 | g2 | g2:7 | c2 |
                e2:7 | a2:m | e2:7 | a2:m | a4:m e4:7 |
                a2:m | e2:7 | a2:m | a4:m c4 | c2 |
                f2 | c2 | c2 | g2 | g2 | c2 |
                c2 | c2 | c2 | f2 | g2:7 | c2 | g2:7 | c2 | c4 g4 |
                c2 | c2 | f2 | d2:m | c2 | g2:7 |
        }
        \alternative {
                { c2 | c2 | }
                { c2 | c2 | }
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
        \midi { \tempo 4=120 }
}
