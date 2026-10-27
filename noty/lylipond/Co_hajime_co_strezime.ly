\version "2.24.0"
\header {
        title = "Co hájíme, co střežíme"
        composer = "P. Akulenko"
        poet = "J. Švedov, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Tempo di marcia" 4=112
\repeat volta 5 {
g8 g g a | b( d4->) b8 | a a e g | fis4( e8[ d]) |
g8 g g a | b( d4->) b8 | c c a g | d'4~ d8 r8 |
e4 e | e8 a, c e | f f e d | a4.( e8) | a4 e' |
d8 g, a b | c a d d | g,8[( b c d]) |
e4 e | e8 a, c e | f f e d | a4.( e8) | a4 e' | d8 g, a b |
}
\alternative {
{ c8 a d d | g,4~ g8 r8 }
{ c8 a d d | g4~ g8 r8 }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Co náš vo -- ják há -- jí, nad čím vo -- ják bdí, __
co si věr -- ně chrá -- ní s~bo -- jov -- ni -- ckou ctí? __
Prá -- ci měst a dě -- din, pev -- ný mír a klid, __
ště -- stí, kte -- ré na -- vždy vy -- do -- byl si lid, __
prá -- ci měst a dě -- din, pev -- ný mír a klid, __
ště -- stí, kte -- ré na -- vždy vy -- do -- byl si lid. __
ne -- ú -- na -- vně bdít! __
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
        \midi { \tempo 4=112 }
}
