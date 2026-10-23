\version "2.24.0"
\header {
        title = "Válka! Válka!"
        composer = "Bedřich Smetana"
        poet = "J. J. Kolár"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key c \major \tempo "Slavnostně" 4=92
c2 g4 r | d'4.( b8) g4 r | c8[( d]) e[( f]) e4( d) | c4 r r2 |
d4. g,8 g4 g | g4 b d e | f8 e d c b4 a | e2 e4 r |
a4 a8[( b]) c4 c8[( b]) | a4 a8[( b]) c8[( g]) c4 |
a4 a8[( b]) c4 c8[( b]) | a4 a8[( d]) e4 e\fermata |
\repeat volta 2 {
f4 f e e8[( c]) | d4 d8[( bes]) c2 | b!4 b8[( g]) c8[( d]) e8[( f]) | e2 d | c2 r |
}
}

text = \lyricmode {
\set stanza = "1."
Vál -- ka! Vál -- ka! Pra -- por vla -- je!
Vzhů -- ru, Če -- ši, Bůh nám pře -- je, stůj -- te pev -- ně při svém prá -- vu,
chraň -- te vlast a Če -- chů slá -- vu! Chraň -- te vlast a Če -- chů slá -- vu!
Ta -- ký jest po vlas -- ti hluk, Tá -- bo -- ri -- tů zpěv a zvuk.
}

accompaniment = \chordmode {
c1 g:7 c2. g4 c1
g1 g d:m e:7
a1:m f2 c f1 d2:m a
\repeat volta 2 {
d2:m a:m bes f g:7 c4 f c2 g:7 c1
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
        \midi { \tempo 4=92 }
}
