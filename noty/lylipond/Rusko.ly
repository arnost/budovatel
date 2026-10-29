\version "2.24.0"
\header {
        title = "Rusko"
        composer = "Anatolij Novikov"
        poet = "Sergej Alymov, český text J. Milde"
}

melody =  \relative c'' {
        \clef treble
        \key f \major \tempo "Allegro moderato" 4=108
\repeat volta 3 {
\time 4/4
c4. g8 bes c16[( bes]) a8 g | a4.( g16[ a]) f4 r4 |
c'4( f8\fermata) es8 d8[( c16]) d16 es8 d16[( c]) | g2.( f4) |
bes4. f8 bes d d c16[( bes]) | a8.[( g16 a8]) bes8 c8[( a d]) c8 |
g4. a8 bes a16[( bes]) c8^\markup { \italic rit. } d | a2~ a8 r8 d8^"Refrén" c |
\time 3/4
d8 c g d' c bes | c bes a f g a | bes4. e,8 f g | a4. d8-> d-> c-> |
\acciaccatura g'8 d8 c16[( d]) g,8 \acciaccatura f'8 d8 \acciaccatura e8 c8 \acciaccatura c8 bes8 |
\acciaccatura f'8 c8 bes16[( c]) a8 c d c16[( bes]) | a4. d,8 bes' a16[( g]) |
}
\alternative {
{ d'4~ d8 r8 r4 }
{ d4~ d8 r8 r4 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Kde bys na -- šel v~ce -- lém svě -- tě krás -- něj -- ší zem, než mám já? __
Krás -- ná v~zi -- mě, na ja -- ře i v~lé -- tě, ne -- ko -- neč -- ná po -- le má! __
Slun -- ko hle, sví -- tí a zá -- ří ce -- lý svět, háj ze -- le -- ný, sad sa -- mý květ.
Oj, Rus -- ko svo -- bod -- né, ty krás -- né, ú -- rod -- né, zem so -- vě -- tů rosť do kvě --
tů! __ tů! __
}

accompaniment = \chordmode {
\repeat volta 3 {
c2 g4:m c4:7 | f1 | f2 bes2 | g2:m c4:m f4:7 |
bes2. c4:7 | f2 c4:m d4:7 | g1:m | a2. d4:7 |
g2:m c4:7 | f2. | g2:m a4:7 | d2.:m |
g2.:m | f2 g4:m | d2:m a4:7 |
}
\alternative {
{ d2:m d4:7 }
{ d2.:m }
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
