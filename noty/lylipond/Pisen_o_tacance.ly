\version "2.24.0"
\header {
        title = "Píseň o „tačance“"
        composer = "Konstantin Listov"
        poet = "Michail Ruděrman, český text Josef Urban"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key bes \major \tempo "Dosti rychle" 4=132
\repeat volta 3 {
  \repeat volta 2 {
    g4--\f^\markup \small "SOLO" d'-- c-- a-- | bes-- g-- f-- d-- | g-- d'-- c8 bes c f | bes,1-> |
    d4\p g, f'8 g es d | c2\< g\> | c4\! a d8 c d c |
  }
  \alternative {
    { g2.-> r4 }
    { g2-> r2 }
  }
  \mark \markup \small \italic "Refrén"
  f4->\ff^\markup \small "SBOR" f f'4.-> es8 | d4-> c bes a8[( g]) | f4-> f f'8 es d c | d1-> |
  es4->\mf c as es' | d8[( c]) bes[( a!]) g4 d' | f4.->\ff es8 d es d c | g2.-> r4 |
  f4\p f f'4. es8 | d4 c bes a8[( g]) | f4 f f'8\< es d c\! | d1-> |
}
\alternative {
  \volta 1,2 { es4->\f c as es' | d8[( c]) bes[( a!]) g4 d' | f4.-> g8 d es d c | g1->\>~ | g2\! r2 }
  \volta 3 { \mark \markup \musicglyph "scripts.segno" es'4->\ff c as es' | d8[( c]) bes[( a!]) g4 d' | f4.-> g8 d es d c | g8-> r8 r4 r2 \bar "|." }
}
}

text = \lyricmode {
Zví -- ře s~ce -- sty ry -- chle sbí -- há,
pták se vzne -- se ho -- nem výš,
mrač -- no pra -- chu jen se zdví -- há,
vpře -- du ko -- ně le -- tět zříš. \skip 1
Ech, ta -- čan -- ka -- ros -- tov -- čan -- ka,
na -- še chlou -- ba ve -- li -- ká,
s~jíz -- dou na -- ší je ta -- čan -- ka,
má vždy čty -- ři ko -- la svá!
Ech, ta -- čan -- ka -- ros -- tov -- čan -- ka,
na -- še chlou -- ba ve -- li -- ká,
s~jíz -- dou na -- ší je ta -- čan -- ka,
má vždy čty -- ři ko -- la svá!
S~jí -- zdou na -- ší je ta -- čan -- ka,
má vždy čty -- ři ko -- la svá!
}

textII = \lyricmode {
Vpřed i vzad a zle -- va, zpra -- va,
všu -- de, kde jen vra -- hy má,
sal -- vy z~ku -- lo -- me -- tu dá -- vá,
mí -- řit chla -- pec do -- bře \skip 1 zná.
}

accompaniment = \chordmode {
\repeat volta 3 {
  \repeat volta 2 {
    g2:m c:m g:m bes g:m f:7 bes1
    g2:m g:7 c1:m d:7
  }
  \alternative {
    { g1:m }
    { g2:m c:7 }
  }
  f1:7 bes f:7 bes as g:m bes g:m
  f1:7 bes f:7 bes
}
\alternative {
  \volta 1,2 { as1 g:m bes2 d:7 g1:m g:m }
  \volta 3 { c1:m g:m g2:m d:7 g1:m }
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
          \new Lyrics \lyricsto "one" \textII
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
