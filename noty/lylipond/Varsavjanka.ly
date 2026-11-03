\version "2.24.0"
\header {
        title = "Varšavjanka"
        subtitle = "Polská revoluční"
        poet = "Wacław Święcicki, český text Erich Sojka"
}

melody =  \relative c'' {
        \clef treble
        \numericTimeSignature \time 4/4 \key e \minor \tempo "Pochodem" 4=108
        b4 b8. a16 g4 fis | e4 e8. e16 dis4 e | fis4 fis8 b,8 cis4 dis | e4 e8. fis16 g4 a |
        b4 b8. a16 g4 fis | e4 e8. e16 dis4 e | fis4 fis8 b,8 cis4 dis | e4 g8. fis16 e4 d |
        g4 g8. g16 d4 g | a4 a8. a16 d,4 a' | a4 a8. a16 d4. c8 | b4 b8. ais16 b4 b |
        b4 b8. b16 e4. b8 | g4 g8. fis16 e4 g | fis4 b8. b16 b,4( cis8) dis | e4 g8. fis16 e4 d |
        g4 g8. g16 d4 g | a4 a8. a16 d,4 a' | a4 a8. a16 d4. c8 | b4 b8. ais16 b4 b |
        b4 b8. b16 e4. b8 | g4 g8. fis16 e4 g | fis4 b8. b16 b8[( a]) g[( fis]) | e4 g8. fis16 e4 e \bar "|."
}

text = \lyricmode {
        Smě -- le jen vzne -- sme pra -- por náš vý -- še,
        na vzdo -- ry bou -- ři, jež ko -- lem vy -- je,
        na vzdo -- ry sí -- le, jež zká -- zou dý -- še,
        na vzdo -- ry dneš -- ku, jenž ne -- ji -- stý je.
        Hleď, to je pra -- por bu -- dou -- cích li -- dí,
        zna -- me -- ní sva -- té, znak zmrt -- vých -- vstá -- ní,
        ví -- těz -- ství prá -- ce, po -- ráž -- ka bí -- dy,
        sbra -- tře -- né ze -- mě čer -- vá -- nek ran -- ní.
        V~boj, v~boj, Var -- ša -- vo, za sva -- té prá -- vo
        se ctí a slá -- vou v~boj, v~boj Var -- ša -- vo,
        v~boj, v~boj Var -- ša -- vo, za sva -- té prá -- vo,
        se ctí a slá -- vou v~boj, v~boj, Var -- ša -- vo!
}

accompaniment = \chordmode {
        e2.:m b4:7 | e1:m | b1:7 | e2.:m d4:7 |
        g2. b4:7 | e1:m | b1:7 | e2.:m d4:7 |
        g1 | d1 | d1 | g2. b4:7 |
        e1:m | e1:m | b1:7 | e2.:m d4 |
        g1 | d1 | d1 | g2. b4:7 |
        e1:m | e1:m | b1:7 | e1:m |
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
