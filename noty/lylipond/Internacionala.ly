\version "2.24.0"
\header {
        title = "Internacionála"
        composer = "P. Degeyter"
	poet = "E. Pottier"
}

melody =  \relative c' {
        \time 4/4\key g \major
	\partial 4
d4 | g4. fis8 a g d b | e2 c4 r8 e |
a4. g8 fis e d c | b2. d4 | g4. fis8 a g d b |
e2 c8 e a g | fis4 a c fis, | g2 (  g8) r b (  a) |
fis4. fis8 e fis g e | fis2 d8 d cis d | e4. e8 a4. g8 |
fis2 (  fis8) r8 a4 | a4. fis8 d d cis d | b'2 g8 e fis g |
fis4 a g e | d2 (  d8) r8 b'8. a16 | g2 d4. b8 |
e2 c8 r a'8. g16 | fis2 e4 d | d2 (  d8) r8 d4 |
b'2 a4 d,8 d | g2 fis4. fis8 | e4. dis8 e4 a |
a2 (  a8) r b8. a16 | g2 d4. b8 | e2 c8 r a'8. g16 |
fis2 e4 d | b'2. b4 | d2 c4 b8 b |
a4. (  b8) c4 r8 c | b4. b8 a4. a8 | \partial 2. g2.
        \bar "|."
}

text = \lyricmode {
Již vzhů -- ru, psan -- ci té -- to ze -- mě, již
vzhů -- ru vši -- chni jež hlad zhnět! Teď du -- ní prá -- vo v~jí --
cnu te -- mně a vý -- buch za -- hřmí na -- po -- sled! Od4 mi -- nu
-- lo -- sti spěj -- me zpá -- tky, o -- tro -- ci vzhů -- ru k~cí --
lům
svým! Již chví se svě -- ta zá -- klad vra -- tký, my ni -- čím ne --
jsme, bu -- ďme vším! Pos -- sle -- dní bi -- tva 
vzplá -- la dej -- me se na po -- chod! In -- ter -- na -- ci -- o
--ná -- la je zí -- třka li -- dský rod, po -- sle -- dní bit -- tva
vzplá -- la, dej -- me se na po -- chod! In -- ter -- na -- ci -- o --
ná -- la je zí -- třka li -- dský rod.

}

accompaniment =\chordmode {
r4 g2 g2 c2 c2
d2:7 d2:7 g2 g2 g2 g2
c2 c2 d2 d2 g2 g2 
d2 a2 d2 d2 a2 a2 
fis2 fis2 d2 d2 g2 g2 
d2 a2 d2 r2 g2 g2
c2 c2 d2 d2 g2 g2 
g2 g2 e2:m b2:m c2 a2:m
d2 d2 g2 g2 c2 a2:m 
d2:7 d2:7 g2 g2 e2:7 e2:7 
a2:m a2:m g2 d2 g2.
		}

\score {
        <<
          \new ChordNames \with { noChordSymbol = "" } \accompaniment
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        
  \midi {
    \tempo 4 = 120
    }


        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}

