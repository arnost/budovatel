\version "2.24.0"
\header {
        title = "Rudý prapor"
        composer = "polský revoluční nápěv"
        poet = "Boleslav Czerwieński, překlad Běla Krapková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Rozhodně" 4=100
\partial 4 d4 |
b'4. a8 g fis g e | d4 g r d | a'4. a8 a a b b | a2 r4 d, |
b'4. a8 g fis g e | d4 g r a | a4. b8 a a b cis | d2 r4 a |
a4. b8 a g fis e | d2 r2 |
g8. g16 g4 b8. b16 b4 | d4 d d d, | b'4 b b8 b a g | d'2 a |
d,8 d d4 fis8 fis fis4 | a8 a a4 r d, | a'4. a8 g[( fis]) e[( d]) |
b'2 r8 g a b | c4 c e e | d2 b8 b c a |
g4 g a a | d2 r8 b c a | g4 d b' a | g2\fermata r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Pryč s~ty -- ra -- ny a zrád -- ci vše -- mi,
nechť zhy -- ne sta -- rý, pod -- lý svět,
my no -- vý ži -- vot chcem na ze -- mi,
v~němž ne -- smí bý -- ti žád -- ných běd,
v~němž ne -- smí bý -- ti žád -- ných běd.
Dá -- le jen, dá -- le jen vzne -- sme zpěv,
náš pra -- por na -- de trů -- ny vla -- je,
ne -- se on pom -- sty hrom, li -- du hněv,
vol -- no -- sti ne -- se zjev
a ru -- dě do kr -- va -- va pla -- je:
je na něm pra -- cov -- ní -- ků krev,
je na něm pra -- cov -- ní -- ků krev!
}

accompaniment = \chordmode {
\partial 4 d4:7 |
g1 | g1 | d2. g4 | d1 |
g1 | g1 | a1:7 | d2. g4 |
a1:7 | d1 |
g1 | g2 d2:7 | g1 | d1 |
d1 | d1 | d1:7 |
g1 | c1 | g2. d4:7 |
g2 d2 | d1:7 | g2. d4:7 | g2.
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
        \midi { \tempo 4=100 }
}
