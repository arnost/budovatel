\version "2.24.0"
\header {
        title = "Gottwaldova pětiletka"
        composer = "Boleslav Vomáčka"
        poet = "M. Záhejská"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key bes \major \tempo "Živě" 4=100
f8 f d f | g8 r16 f d8 f | es8 d es f | d8 es f r |
f8 f d f | g8 f d f | c8 d e g | f8 g a r |
bes8 bes a bes | c8 bes g bes | c8 c d c | a8 bes c4 |
f,8. g16 a8 es' | d8 c bes d | f8 es d c | d8 c bes4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Gott -- wal -- do -- va pě -- ti -- let -- ka u -- kon -- či -- la prv -- ní rok,
s~čím se a -- si dru -- hý set -- ká, jak pak bu -- de na přes -- rok?
Od -- po -- vě -- di jsou tu pro -- sté: vše -- ho bu -- de stá -- le víc,
čím víc u nás po -- čet vzro -- ste ú -- der -- ní -- ků, ú -- der -- nic.
}

accompaniment = \chordmode {
bes2 | bes2 | f2:7 | bes2 |
bes2 | bes2 | c2:7 | f4 f:7 |
bes2 | es2 | c2:7 | f4 f:7 |
f2:7 | d4 g:m | f2 | bes2 |
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
        \midi { \tempo 4=100 }
}
