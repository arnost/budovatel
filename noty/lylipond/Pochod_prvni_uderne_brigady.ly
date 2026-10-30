\version "2.24.0"
\header {
        title = "Pochod první úderné brigády"
        subtitle = "albánská partyzánská"
        poet = "český text Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \minor \tempo "Pochodem" 4=108
        \partial 4 d8. d16 |
        d4 f8. e16 | d4 f8. g16 | a4 bes8. a16 | g4 f8. g16 | a4 bes8. a16 |
        g8 g8 f8 g8 | a2~ | a8 r8 a8. a16 | e'4 d8. cis16 | d8 d8 a8. c16 | bes4 a8. g16 |
        a8 a8 f8. g16 | a4 f8. e16 | d8 d8 f8. g16 | a2~ | a8 r8 a8. a16 | d4 d8 bes8 | g8. g16 c8. bes16 |
        a4\( g4~ | g8\) r8 g8. g16 | c4 c8 a8 | f8. f16 bes8. bes16 | a2~ | a8 r8 r8 d,16 e16 |
        \repeat volta 2 {
                f8 e16 d16 g8 g16 a16 | bes8 a16 g16 a8 e16 g16 | f8 e16 d16 e8 f16 e16 |
        }
        \alternative {
                { d4\fermata r8 d16 e16 | }
                { d2~ | d4 \bar "|." }
        }
}

text = \lyricmode {
        Ku -- lo -- met za -- ště -- kal, zu -- ři -- vý boj už vzplál,
        ku -- pře -- du ši -- ky par -- ty -- zá -- nů jdou.
        Přes le -- sy, ho -- ry, vo -- du, stá -- le dál, za svo -- bo -- du!
        Za -- že -- nem ne -- pří -- te -- le si -- lou svou.
        Prv -- ní bri -- gá -- du ni -- kdo ne -- za -- sta -- ví,
        kaž -- dý krok je -- jí krok je ví -- těz -- ný.
        Hej, bri -- gá -- do, jen dál. Do -- bře miř, do -- bře pal,
        pra -- por svo -- bo -- dy výš po -- zved -- ni.
        Hej, bri -- ni!
}

accompaniment = \chordmode {
        \partial 4 s4 |
        d2:m | d2:m | d4:m g4:m | c2:7 | f2 |
        c2:7 | f2 | f4 a4:7 | d2:m | d2:m | g2:m |
        d2:m | d2:m | d4:m bes4 | a2:7 | a2:7 | bes2 | c2:7 |
        c2:7 | c2:7 | f2 | bes2 | a2:7 | a2:7 |
        \repeat volta 2 {
                d4:m g4:m | c4:7 f8 a8:7 | d4:m a4:7 |
        }
        \alternative {
                { d2:m | }
                { d2:m | d4:m }
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
        \midi { \tempo 4=108 }
}
