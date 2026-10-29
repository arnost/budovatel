\version "2.24.0"
\header {
        title = "Pionýrská pochodová"
        composer = "S. Grossman"
        poet = "B. Novotný"
}

melody =  \relative c' {
        \clef treble \numericTimeSignature
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
\partial 4 c8 c |
\repeat volta 2 {
a'4 a bes a8 g | f4 f r f8 a | c4 c d c8 c | c2~ c8 r a bes |
c4 a c8 c bes a | g4.( a8) bes r f g | a4 f g8 g f e | d2~ d8 r a' bes |
c4 a c8 c bes a | g4.( a8) bes r f g | a4 f g8 g f e |
}
\alternative {
{ d2~ d8 r c c }
{ d2~ d8 r r4 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ru -- dé šá -- tky na slun -- ci ho -- ří ja -- ko ro -- zkve -- tlý vl -- čí mák, __
a po ce -- lém kra -- ji le -- tí pí -- seň za skři -- ván -- kem vzhů -- ru do o -- blak. __
A po ce -- lém kra -- ji le -- tí pí -- seň za skři -- ván -- kem vzhů -- ru do o -- blak. __
To je výš. __
}

accompaniment = \chordmode {
\partial 4 s4
\repeat volta 2 {
f2 c:7 f1 bes f d:7 g:m d2:m a d4:m g:m d2:m
d1 g4.:m d8 g2:m d2:m a
}
\alternative {
{ d4:m g:m d:m c:7 }
{ d4:m g:m d2:m }
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
        \midi { \tempo 4=112 }
}
