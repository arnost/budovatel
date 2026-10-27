\version "2.24.0"
\header {
        title = "Budu čekat milého zpátky z letu"
        composer = "V. Muradeli"
        poet = "A. Salnikov, český text M. Kubr"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key d \minor \tempo "Mírně" 4=80
\repeat volta 4 {
r4 a8 c |
bes8[( a]) g f | e[( c a' g]) | a g16[( a]) f4~ | f8 r a c |
bes8[( a]) g f | e[( c a' g]) | a g16[( a]) d,4~ | d4. r8 \bar "||"
d'8^"Sbor" c d c | bes[( a]) g f | e d' c16[( d bes8]) | a4( d8) r8 |
bes8 a bes a | g[( f]) e d | cis bes' a16[( bes g8]) | d2 |
bes'8 d c16[( d bes8]) | a4( d8) r8 | g,8 bes a16[( bes g8]) |
}
\alternative {
{ d'2~ | d2 }
{ d2~ | d2~ | d2~ | d2~ | d8 r8 r4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Mi -- lý mně od -- le -- těl __ vy -- so -- ko, __
mi -- lý mně od -- le -- těl __ da -- le -- ko. __
Ne -- vi -- dím už le -- ta -- dlo, ti -- cho je __ tu, __
bu -- du če -- kat mi -- lé -- ho zpát -- ky z~le -- tu.
Zpát -- ky z~le -- tu, __ zpát -- ky z~le -- tu. __
tu. __
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new Voice { \melody }
        >>
        \midi { \tempo 4=80 }
}
