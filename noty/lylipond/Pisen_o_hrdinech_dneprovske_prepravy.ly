\version "2.24.0"
\header {
        title = "Píseň o hrdinech dněprovské přepravy"
        composer = "David Saliman-Vladimirov"
        poet = "M. Lapirov, český text Kamil Bednář"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Zvolna" 4=80
r2\fermata r4 c8 c |
\repeat volta 3 {
f8 f e c d4( g,) | c4 r r c8 c | a'8 a g f g4( a) | d,4 r r f8 f |
d'8 d c bes c4 f,8 f | d'8 d c bes c4 f8 es | d4. c8 bes4 a | g4( c) a d,8 d |
bes'8 a g f16[( g]) a8 d d f | g4. f8 e4 d | c1~ | c4 r r2 | r2 r4 c,8 c |
\key f \minor
f8 c f as g[( es] f4) | c2~ c8 r es es | as8 es as c bes4( as8[ f]) |
es2~ es8 r es'8 des | c8. c16 bes8 as bes4 es8 des | c8. c16 bes8 as bes4 es8. es16 |
es4. es8 es4 f | es2~ es8 r c8. c16 | as'4. as8 g4 es |
f4 f r as,8. as16 | f'4. f8 es4 as, | des4( es8[ des]) c4 f,8 as |
}
\alternative {
{ bes8. c16 des8 f c2~ | c1~ | c2\fermata r4 c,8 c }
{ bes'4. c8 des4 f | c2~ c8 r bes c | des4. es8 f4 g | f1~ | f1~ | f4\fermata r r2 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Chlap -- ci bo -- jov -- ní -- ci zrá -- na ob -- stou -- pi -- li ve -- te -- rá -- na:
Po -- věz, strýč -- ku, žád -- ný smích, Po -- věz, strýč -- ku, žád -- ný smích,
jak ne -- pří -- tel při -- šel zkrát -- ka, ja -- ká ho če -- ka -- la jat -- ka
tam u Dně -- pru v~li -- ni -- ích!
Na -- še plu -- ky pod Pol -- ta -- vou ne -- pří -- te -- le s~vel -- kou slá -- vou
hna -- ly stá -- le dál a dál, hna -- ly stá -- le dál a dál, hna -- ly stá -- le dál a dál
po pro -- sto -- rách U -- kra -- ji -- ny, po ste -- pích a přes ro -- vi -- ny, až před
ni -- mi Dně -- pr stál. Ne -- pří --
v~na -- šich ví -- těz -- stvích, ži -- jí v~na -- šich ví -- těz -- stvích.
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
