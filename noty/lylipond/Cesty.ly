\version "2.24.0"
\header {
        title = "Cesty"
        composer = "Anatolij Novikov"
        poet = "Lev Ošanin, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key f \major \tempo "Volně" 4=96
\repeat volta 4 {
a2 d,4 | bes' g2 | g4 c, c'8.[( bes16)] | a2. |
d,8 f a4 f | g e2 | a,8 a a4 f'8[( e)] | d2. |
a'2 d,4 | bes' g2 | g4 c, c'8.[( bes16)] | a2. |
d,8 f a4 f | g e2 | a,8 a a4 f'8[( e)] | d2.^\markup \italic "Konec" \bar "||"
\volta 1,2,3 {
d8 bes' bes bes a g | a4 f r8 c' | bes4 g r8 d' | c4 a r |
c,8 bes' bes bes a g | a4 f r8 c' | bes4 g d' | a2.
}
}
}

text = \lyricmode {
Ej, vy ces -- ty, ml -- hy a prach,
mráz a step -- ní trá -- va, sig -- nál na po -- plach.
Ne -- u -- hád -- neš svou bu -- douc -- nost,
mož -- ná v~ste -- pi pad -- neš vra -- nám pro ra -- dost.
Zpod bot mráč -- ky pra -- chu le -- tí do ste -- pí, do po -- lí,
dě -- la sly -- šíš po o -- ko -- lí a kul -- ky zlý hvizd.
}

accompaniment = \chordmode {
\repeat volta 4 {
d2.:m g:m c:7 f
d2.:m a:7 a:7 d:m
d2.:m g:m c:7 f
d2.:m a:7 a:7 d:m
\volta 1,2,3 {
g2:m c4:7 f2. c:7 f
c2.:7 f g:m a:7
}
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(slurMelismaBusy tieMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=96 }
}
