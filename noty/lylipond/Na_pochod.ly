\version "2.24.0"
\header {
        title = "Na pochod!"
        subtitle = "(Buď sláva ti, zem šíra!)"
        composer = "Zdenek Cón"
        poet = "Pavol Štefánik a Jarko Elen"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
        \set melismaBusyProperties = #'()
f4 f8[ a] c2 | f4 c8[ a] c2 | \tuplet 3/2 { a4 f a } \tuplet 3/2 { c4 a c } | f4-> c, d e |
\repeat volta 2 {
f2 e4 f | d2 e | f2 r | r4 f g a | bes2 bes |
a2 g | c2 r | r4 c d e | f2 d | e2 d |
c2 a | f2 r | e2 dis4 e | g2 g | a2 b |
c4 r c,2 \bar "||"
c2. c4 | d2 e | f1 | c2 c | a'2. a4 | bes2 d | c2. r4 |
r2 c | d2. f4 | e2 d | c4 r a r | a2 r4 c |
f,2 a | g2 f | c'2 r | r2 cis | d2 f | e2 d | c1 |
f2 c | c2 c | d2 c | f1~ |
}
\alternative {
  { f4 c, d e }
  { f'4\repeatTie r4 r2 \bar "|." }
}
}

text = \lyricmode {
\repeat unfold 15 { \skip 1 }
Nad na -- mi
plá -- po -- lá sln -- ka jas,
pred na -- mi le -- ží ší -- ra zem.
K~ra -- dost -- nej prá -- ci vo -- lá všet -- kých nás,
ú -- spech sa zro -- dí z~prá -- ce len! Buď
slá -- va ti, zem, zem ší -- ra, ty krás -- ny, rod -- ný~kraj!
Hold svoj ti vzdá -- me prá -- _ cou a ty nám plo -- dy daj!
Spoj pra -- cu -- jú -- cich v~šik svoj a vša -- de skvi -- tne raj!
Na po -- chod raj!
}

textB = \lyricmode {
\repeat unfold 15 { \skip 1 }
Na po -- chod
zdví -- ha -- me zá -- sta -- vu,
do na -- šich ší -- kov rú -- če vstúp,
ro -- dia -- cej ze -- mi vo -- laj na slá -- vu,
z~nej svit -- ne šťas -- tie do cha -- lúp!
}

accompaniment = \chordmode {
f1 f1 f1 f1
\repeat volta 2 {
f1 bes2 c2:7 f1 f2 f2:7 bes2 bes2:m
c1:7 f1 f1 bes1 b1:dim
f2 a2:7 d1:m a1:m e1:m d2:m g2:7
c2 c2:7
f1 g2 c2:7 f1 f1 f1 bes1 f1
f2 f2:7 bes1 b1:dim f1/c a1:7
d1:m g1:7 c1 c2 a2:7 bes1 bes1 f1
f2 d2:7 g1:m c1:7 f1
}
\alternative {
  { f1 }
  { f1 }
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
