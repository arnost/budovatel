\version "2.20.0"
\header {
        title = "Hej ty puško" 
        composer = "E. Toman" 
	poet = "J. Mareš" 
}

melody = \relative c'' {
        \clef treble
        \time 2/4 \key d \major
a4. g8 | fis4 a | d4. e8 | d4 b | a b |
a d, | e2  ( |  a  ) | a4. g8 | fis4 a | d4. e8 | d4 b |
a fis | e a | d, r | r2 | e4. g8 | fis4 e |
fis4. a8 | g4 fis | b4. cis8 | d4 e | fis2 ~ |  fis8 r8 r4 |
fis4. e8 | d4 b | a4. b8 | a4 fis | e4. fis8 | g4 b |
a2 ~ |  a8 r r4 | fis'4. e8 | d4 b | a4. b8 | a4 fis |
b cis | d e | d8 r r4 
        \bar "|." 
}

text = \lyricmode {
Hej, ty puš -- ko, puš -- ko, mo -- je, jak já 
tě mám rád, èe -- ka -- jí nás těž -- ké bo -- je,
pů -- jdem bo -- jo -- vat.
Když už pů -- jdem ne -- dá -- me  se,
bu -- dem svor -- ně stát,
v~ste -- pích ho -- rách ne -- bo v~le -- se bu -- de -- me se rvát.
v~ste -- pích ho -- rách ne -- bo v~le -- se bu -- de -- me se rvát.
}

accompaniment =\chordmode {
d1  g  d4 g 
d2 g a:7 d1 g 
d2 g4 a:7 d1 a:7
d g2 e4:m a:7 d1.
g2 d1 a d1. g2 d1 g2 e4:m a:7 d2
		}

\score {
        <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
       >>
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

