\version "2.24.0"
\header {
        title = "Píseň o rozhodném kroku"
        composer = "Jan Seidel"
        poet = "Jarmil Sekera"
}

melody = {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
c'4 f'8. e'16 d'4 bes' | a'8 g' f' e' f'4 c' | c'4 f'8 e' d'4 bes' | a'8 g' f' e' f'4 r |
a'8 bes' c''4 d'' c'' | bes'8 c'' bes' a' g'4 c'' | a'8 bes' c''4 d'' c'' | bes'8 c'' bes' a' g'4 r |
c''4 f' a' g' | f' r r r | c'' f' a' g' | f' r r2 \bar "||"
c'4 f'8. e'16 d'4 bes' | a'8 g' f' e' f'4 c' | c'4 f'8. e'16 d'4 bes' | a'8 g' f' e' f'4 r |
a'8 bes' c''4 d'' c'' | bes'8 c'' bes' a' g'4 c'' | a'8 bes' c''4 d'' c'' | bes'8 c'' bes' a' g'4 r |
c''4 f' a' g' | f' r r r | c'' f' a' g' | f' r r2 \bar "|."
}

text = \lyricmode {
Zpí -- vá -- me pí -- seň o roz -- hod -- ném kro -- ku,
o kro -- ku, kte -- rým zvo -- ní ce -- lá zem.
Po slav -- né ce -- stě plod -- ných pě -- ti ro -- ků
po -- cho -- dem pev -- ným jdem a jdem a jdem,
jdem a jdem a jdem, jdem a jdem a jdem!
Ať na -- ši pí -- seň kaž -- dý v_svě -- tě sly -- ší,
pí -- seň o ráz -- ném kro -- ku za cí -- lem.
I zla -- té slun -- ce u -- smí -- vá se s_vý -- šin,
když vi -- dí, jak my jdem a jdem a jdem,
jdem a jdem a jdem, jdem a jdem a jdem!
}

textB = \lyricmode {
\repeat unfold 52 { \skip 1 }
Pra -- cí a bo -- jem pro -- ti žhá -- řům plá -- nu,
ví -- těz -- nou pí -- seň k_cí -- li do -- ne -- sem.
Po -- cho -- dem po -- chod k_ví -- těz -- né -- mu rá -- nu,
sou -- dru -- zi vzhů -- ru jdem a jdem a jdem,
jdem a jdem a jdem, jdem a jdem a jdem!
}

accompaniment = \chordmode {
f2 bes2 | c4:7 c4:7 f4 c4:7 | f2 bes2 | c4:7 a4:7 d2:m |
f1 | c1:7 | f2 f2:7 | g4:m bes4:m c2:7 |
f2 g4 c4 | f1 | f2 g4:6 c4 | f1 |
f2 bes4 g4:m | c4:7 c4:7 f4 c4:7 | f2 bes4 g4:m | c4:7 a4:7 d2:m |
f2 f2:7 | g4:m bes4:m c2:7 | f1 | g4:m bes4:m c2:7 |
f2 g4:m c4:7 | f1 | f2 g4:m c4 | f1 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
