\version "2.24.0"
\header {
        title = "Píseň mladých vojáků"
        composer = "P. Akulenko"
        poet = "J. Švedov, český text K. Bednář"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key f \minor \tempo "Rázně" 4=104
c8 g16 g c4 | c4.( d8) | c8 g16 g c4 | c4.( d8) |
\repeat volta 6 {
c,4 g' | f4. as8 | bes c bes f | as4 g |
f4 c' | bes4. c8 | des es des as | c4 bes |
as8^"Refrén" c es4 | des8 c bes as | g es as bes | c4( bes) |
f8 f des'4 | c-> bes-> | as8 as g c | f,4( es) |
as8 c es4 | bes8 c des f | es des c bes | c4( bes) |
f8 f des'4 | c bes | as8 as g c | f,4~ f8 r8 |
}
}

text = \lyricmode {
Hej e -- ja hej hej __ hej e -- ja hej hej __
\set stanza = "1."
V~o -- bi -- lí se ces -- ta k~ško -- le stá -- čí,
smě -- lá pí -- seň tu -- dy s~ná -- mi krá -- čí.
Správ -- ná věc, slou -- žit vla -- sti, věr -- ně při ní stát, __
bo -- jo -- vou slá -- vu do ští -- tu si dát! __
Správ -- ná věc, slou -- žit vla -- sti, věr -- ně při ní stát, __
bo -- jo -- vou slá -- vu do ští -- tu si dát! __
}

accompaniment = \chordmode {
c2:m | c4:m g4:m | c2:m | c4:m g4:m |
\repeat volta 6 {
c2:m | f2:m | bes2:m | f4:m c4 |
f2:m | bes4:m f4:m | bes8:m as8 bes4:m | as4 es4 |
as2 | bes8:m f8:m bes8:m des8 | es4:7 f8:m es8 | as4 es4 |
f4:m bes4:m | f4:m bes4:m | f4:m c4:m | f4:m es4:7 |
as2 | bes8:m f8:m bes8:m des8 | es4 f8:m es8 | as4 es4 |
f4:m bes4:m | f4:m bes4:m | f4:m c4:m | f2:m |
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
        \midi { \tempo 4=104 }
}
