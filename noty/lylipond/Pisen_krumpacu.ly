\version "2.19.44"
\header {
        title = "Píseň krumpáčů"
        composer = "Jaroslav Vaďura"
	poet = "Jaroslav Rouček"
}

melody = \relative c'' {
        \clef treble
  		\key c \major
        \time 2/4
g4 g8 g8 | a4 b | c d | e2 | d4 c8 c | a4 c | g2 | g4 g8 g | a4 b | d e | f2 | g,4 e'8 d | c4 g | e' d | c r |
}


text = \lyricmode {
S~ve -- se  -- lou pís -- ní krum -- pá -- čů jdem bou -- rat sta -- rý svět, jdem bu  -- šit pěs -- tí do spá -- čů,
jsme prů -- kop -- ní -- ky lep -- ších let.
}



\score{
  <<
    \new Voice = "one" {
      \autoBeamOn
      \melody
    }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { \tempo 4 = 50}
}


