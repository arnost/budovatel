\version "2.24.0"
\header {
        title = "Ej, zelenými pláněmi"
        subtitle = "Komsomolská"
        composer = "Vladimir Zacharov"
        poet = "Michail Isakovskij, český text Pavel Kohout"
}

melody =  {
        \clef bass
        \time 4/4 \key d \major \tempo "Pochodem" 4=108
r2 r4 d'4 | a4 g fis8[( a]) e4 | d4 e8[( fis]) g4 d'4 |
b4 d'4 c'4 b8[( a]) | b2~ b8 r8 b8[( c'8]) | d'4. a8 d'8[( e']) b8[( a]) |
g4. a8 b4 d'8[( e']) | fis'4. e'8 fis'4 d'4 | e'2. \clef treble cis'8. d'16 |
e'4. e'8 e'4 a'4 | fis'4. e'8 d'4 d'4 | g'4 b'4 b'4 a'8[( g']) |
fis'8[( g' a' b'] c''4) b'8 a'8 | b'4. a'8 b'4 a'8[( g']) | fis'4. e'8 fis'4 e'8[( d']) |
a4 a'4 a'4 a'4 | fis'8[( g' a' b'] c''4) b'8[( a']) | b'4. a'8 b'4 a'8[ g'] |
fis'4. e'8 b'8[( fis']) e'8[( d']) | a4 a'4 a'4 a'4 | d'2. r4 \bar "|."
}

text = \lyricmode {
Ech, ze -- le -- ný -- mi plá -- ně -- mi se
táh -- ne ze -- mě má, ta ze -- mě me -- zi
ze -- mě -- mi, má ze -- mě so -- vět -- ská.
A nad ní sta -- lin -- ští so -- ko -- li dnem no -- cí dr -- ží
stráž, když do zá -- vo -- dů a do po -- lí jde
k~prá -- ci ná -- rod náš, když
do zá -- vo -- du a do po -- lí jde
k~prá -- ci ná -- rod náš.
}

accompaniment = \chordmode {
d1 d2. a4:7 d2 g2
g4 d2.:7 g1 d2 b2:m
e2.:m a4:7 d1 a1
a1 d2. d4:7 g2 a2:7
d2 b2:7 e1:m b2:m e2:7
a4 d2/a a4 d2 b2:7 e1:m
b2:m e2:7 a2:7 d4/a a4:7 d1
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=108 }
}
