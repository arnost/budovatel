\version "2.24.0"
\header {
        title = "Ostravská častuška"
        composer = "Ivan Růžička"
        poet = "Erich Sojka"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Vesele, živě" 4=120
fis8 fis fis g | b8 a a fis | a8 g g e | b'4 a |
fis8 fis fis g | b8 a a fis | a8 g g e | d4 d |
e8 e g g | fis8 fis a4 | g8 g b b | a4 d |
e8 d cis b | a8 a fis fis | a8 g fis e | d4 d \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Sou -- druh Gott -- wald do O -- stra -- vy pís -- mo dlu -- he na -- psal,
že pry u nas ce -- lý re -- vír pě -- ti -- let -- ku za -- spal.
Ja, ja, ja, za -- spa -- li sme, a -- le sta -- něm za -- se.
Na O -- strav -- sku bu -- děm ru -- bať ja -- ko na Don -- ba -- se.
}

accompaniment = \chordmode {
d2 | d2 | a2:7 | d2 |
d2 | d2 | a2:7 | d2 |
a2:7 | d2 | a2:7 | d2 |
a2:7 | d2 | a2:7 | d2 |
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
