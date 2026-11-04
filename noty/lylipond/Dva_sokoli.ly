\version "2.24.0"
\header {
        title = "Dva sokoli"
        composer = "E. Jurevič"
        poet = "Lidový text, český text Jelena Holečková"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \minor \tempo "Pozvolna" 4=72
\repeat volta 6 {
g4^"Solo" d' bes a8[( bes)] | g4.( f16[ es)] d4~ d8 r8 |
g4 d' bes a8[( g)] | f4.( g8) d4 r |
}
\alternative {
  \volta 1,2,3,4,5 {
    es4 g c bes8[( a)] | bes2 g | bes4 bes a8[( g)] a4 | g2( a4) bes |
    c4.^"Sbor" bes8 a4 g8[( a)] | bes4.( a16[ bes)] g2 | f4 es d bes' | a4.( bes16[ a)] g4~ g8 r8 |
  }
  \volta 6 {
    c4.^"Dva hlasy" d8 es4 d8[( c)] | bes2( d4) d | cis c d8[( e)] fis4 | g2.~ g4 |
    es4.^"Sbor" d8 c4 bes8[( c)] | d4.( c16[ d)] bes2 | f'4 es d bes | c4.( d16[ c)] <g g'>2\fermata \bar "|."
  }
}
}

text = \lyricmode {
Na ze -- le -- ném doub -- ku, __
na tom na pa -- lou -- ku,
so -- ko -- li dva jas -- ní roz -- prá -- vě -- li spo -- lu,
so -- ko -- li dva jas -- ní roz -- prá -- vě -- li spo -- lu.
U -- či -- nil on šťast -- nou rod -- nou ze -- mi
\set ignoreMelismata = ##t svo -- ji, \unset ignoreMelismata
u -- či -- nil on šťast -- nou rod -- nou ze -- mi svo -- ji.
}

accompaniment = \chordmode {
\repeat volta 6 {
g2.:m c4:m g1:m g2.:m c4:m f2 bes
}
\alternative {
  \volta 1,2,3,4,5 {
    c1:m g:m g2:m d:7 g1:m
    s1*4
  }
  \volta 6 {
    c1:m g:m es2:7 d g1:m
    s1*4
  }
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(slurMelismaBusy tieMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=72 }
}
