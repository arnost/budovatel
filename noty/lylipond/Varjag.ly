\version "2.24.0"
\header {
        title = "Varjag"
        composer = "zpracoval A. V. Alexandrov"
        poet = "český text Jelena Holečková"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=104
        r2 r4 r8 a8 |
        c4 d8. a16 c4 d8. a16 | c4 bes8. a16 bes4 r8 c,8 | c4 e8. g16 bes4 a8. g16 |
        f4.( g8) a4 r8 f8 | d'4 d8. d16 d8( c8) bes8 a8 | g4 g8. bes16 d4 r8 d8 | c4 e8. d16 c8( bes8) a8 g8 |
        f2 f4 r8 f8 | d'4 d8. d16 d8( c8) bes8 a8 | g4 g8. bes16 d4 r8 d8 | c4 e8. d16 c8[\melisma bes8]\melismaEnd a8 g8 |
        f2 f4 r4 \bar "|."
}

text = \lyricmode {
        Teď, sou -- dru -- zi, na -- ho -- ru, na mí -- sta svá,
        my po -- sled -- ní pře -- hlíd -- ku má -- me.
        Oč náš hr -- dý Var -- jag teď pro -- sit se má?
        Dřív pad -- ne -- me, než -- li se vzdá -- me!
        Oč náš hr -- dý Var -- jag teď pro -- sit se má?
        Dřív pad -- ne -- me, než -- li se vzdá -- me!
}

accompaniment = \chordmode {
        s1 |
        f1 | c1:7 | c1:7 |
        f1 | bes2 d2:7 | g1:m | c1 |
        f1 | bes2 d2:7 | g1:m | c1 |
        f1 |
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
