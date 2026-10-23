\version "2.24.0"
\header {
        title = "Pionýrská"
        composer = "Jiří Strniště"
        poet = "Jan Trefulka"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key fis \minor \tempo "Živě (Allegro giocoso)" 4=132
\repeat volta 4 {
b4 cis b fis | b8 cis b2 fis4 | fis4 e d e | fis4 r r2 |
b4 cis b fis | b8 cis b2 fis4 | cis'4 a gis cis, | fis2 ~ fis8 r r4 |
gis4. a8 gis4 cis, | fis4 gis a2 ~ | a4 gis8 a b4 fis | a4 b cis2 |
b4 cis cis fis, | b8 cis b2 fis4 | cis'4 b gis cis, |
}
\alternative {
{ \fixed c' { fis4 r r2 | R1 } }
{ \fixed c' { fis4^"Fine" r r2 } \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Pi -- o -- ný -- ři, pi -- o -- ný -- ři ja -- ko or -- li vpřed!
Pi -- o -- ný -- ři, pi -- o -- ný -- ři do bu -- dou -- cích let!
Brá -- nit vlast a vě -- čný mír! __ To chce kaž -- dý pi -- o -- nýr!
Pi -- o -- ný -- ři, pi -- o -- ný -- ři ja -- ko or -- li vpřed! vpřed!
}

accompaniment = \chordmode {
\repeat volta 4 {
b2:m e | b4:m e2. | g1 | b1:m |
b2:m e | b4:m e2. | fis2:m cis | fis1:m |
cis1 | fis4:m cis fis2:m | a4 e8 a e2 | a4 e fis2 |
b2:m e | b4:m e2. | fis4:m gis cis2 |
}
\alternative {
{ fis1:m | fis1:m }
{ fis1:m }
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
        \midi { \tempo 4=132 }
}
