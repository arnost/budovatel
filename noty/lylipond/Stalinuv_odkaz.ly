\version "2.24.0"
\header {
        title = "Stalinův odkaz"
        composer = "Vladimír Růžek"
        poet = "Olga Simová"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Široce" 4=88
\repeat volta 2 {
c8 d e4 f f | g8( a16 g) f8( g) a2 | a8 bes c4 d8( a) a4 |
c4 f, g a | a8 bes c4 d a | c8( d) e4 f2 |
c8 d a4 bes8 c f, g | a4 a r4 c8^"odhodlaně" a | g4 g f g |
a4 a r8 c a c | d4 a a g8( f) | g4 g r2 |
c8( d) e4 e a, | b8 c bes4 a2 | f8 g a4 f8( g) a4 |
d8.-> a16 a4 a r4 \bar "||"
\key g \major
d4^"Refrén" g,8 a b4 c | d8( b) g( fis) e2 | g8 e d4 g a | b8( a) g( b) a4 b8( c) |
d4. b8 g4 g | fis4. e8 e4 r4 | g8 e d g a4 b | a8 g g4 r4 b8( c) |
d4. b8 g4 g | e4 a a r4 | g8 e d4. g8 a b |
}
\alternative {
{ a8 g g4 r2 | R1 | R1 }
{ a8 g g4 r2 | R1\fermata \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Oh -- ni -- vák lu -- hů gru -- zín -- ských, od -- cho -- ván bou -- ří,
vi -- chři -- ce -- mi, vy -- ne -- sl k~slun -- ci v~kříd -- lech svých
tr -- pí -- cí, za -- ned -- ba -- nou ze -- mi.
Jis -- krou sta -- lin -- ské -- ho slo -- va se o -- cel srd -- cí za -- ka -- li -- la,
hr -- dá ze -- mě as -- bes -- to -- vá, v~o -- bět -- ních oh -- ních zví -- tě -- zi -- la.
Zvuk nej -- draž -- ší -- ho ze všech jmen u -- ra -- gan svě -- tem roz -- ne -- se
s~tím ne -- hy -- nou -- cím od -- ka -- zem: Pro -- le -- tá -- ři svě -- ta, spoj -- te se!
S~tím ne -- hy -- nou -- cím od -- ka -- zem: Pro -- le -- tá -- ři svě -- ta, spoj -- te se!
spoj -- te se!
}

accompaniment =\chordmode {
\repeat volta 2 {
f4 c f d:m g:m c f a:7 d:m f:6 b2:m7.5-
f2 c4 f d:m6 c:6 d:m a:m6 f:6 a:sus2 d:m6 d:m
f2:6 g4:m7 c:7 f1 c4 g:m d:m c
f2 a:m d:m g:7 c1
e2 a:m d:m a:m bes4 f bes a d1:7
g2 g4 c:6 g2:6 c c4/g g e:m d a2:7 d
g1:6 c g2/d d4 g d4:7 g2.
g1:6 c4 a2.:m6 g2/d d:7
}
\alternative {
{ d4:7 g2. g2:m d:m6 g:m7 c:7 }
{ d4:7 g2 a4:m7 g1 }
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
        \midi { \tempo 4=88 }
}
