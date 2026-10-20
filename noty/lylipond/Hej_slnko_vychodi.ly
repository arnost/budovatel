\version "2.24.0"
\header {
        title = "Hej slnko vychodí"
        composer = "B. Urbanec"
	poet = "B. Urbanec"
}

melody =  \relative c' {        
\time 2/4\key f \major
d8 d4 cis8 | d4 e | f e | d f8 g |
a a4 g8 | a4 c | a2 | a4 r | d,8 d4 cis8 |
d4 e | f g | a bes8 d | a8 a4 g8 |
f4 e | d2 | d8 r r4 | d8 d4 cis8 | d4 e |
f  e8[ (  a) ] | d,4 f8 g | a8 a4 g8 | a4 c |
a2 a4 r | d,8 d4 cis8  | d4 e | f  g8[ (  bes) ] |
a4 bes8 d | a8 a4 g8 | f4 e | d2 d8 r r4 |
\key d \major
\repeat volta 2 {
a'2 | d2 | cis8  b16[ (  d) ] b8 g | a2 | r8 e fis gis |
a8 b a gis | fis e fis gis | a cis b a |
gis fis fis d | e r a4 | gis8 fis fis d |
e r a4 | gis16 fis8. fis8 d | e2 ( |  e2) |}

r8 e fis8. g16 | a4 a |  fis16[ (  a8.) ] e4 | a8 r r4 | r8 b cis d |
cis8. b16 b4 ( |  b8) cis b  b16[ (  e) ] | a,8 r r4 | r2 |
a | d | cis8  b16[ (  d) ] b8 g | a2 | r8 e fis g |
a b cis d | e e d cis | d2 ( |  d8) r8 r4 | 
        \bar "|."
}

text = \lyricmode {
Na -- di -- šel sve -- ta no -- vý čas a nám
za -- svi -- rli krá -- sne rá -- na, keď člo -- vek
prá -- ce vznie -- sol hlas: zdvi -- hol be -- dá -- ra,
zni -- čil pá -- na. Po -- vznie -- sol prá -- ce 
vne -- se -- nosť, bo z~nej naj -- väč -- šia ply -- nie
slá -- va. Vy -- kvi -- tli no -- vé zá -- hra -- dy. kde len ho -- lá
púšť pred tým stá -- la.
Hej, hej, svet sa už bu -- dí, a o -- trok  str -- hol pu --tá pod zá
-- sta -- vou Le -- ni -- no -- vou,
pod ním du -- ní zem, hej, pod ním du -- ní zem, hej, ce -- lá du --
ní zem.
A krá -- ča sme -- lo hr -- do vpred s~če -- rve -- nou zá -- sta --
vou už ce -- lý svet!
Hej, hej, sln -- ko vy -- cho -- dí: za šte -- stie 
pra -- cu -- jú -- cich Stra -- na sa bo -- rí!
}

accompaniment =\chordmode {
d2.:m a4:7 d:m a:7 d2:m 
f4 c:7 f bes:7 f2 a:7 d2.:m
a4:7 d:m c:7 f g:m d2.:m
a4:7 d2.:m r4 d2.:m a4
d:m a:7 bes2 f2. bes4:7
f2 a4:7 r d2.:m a4 d4:m c 
f4 g:m d4.:m c8:7 f4 a:7 d2. r4 |
d1 g2 d r8 e4.:7
a2 e:7 a
d a d
a d e1
e2:m a1 d e:7 a2 a:7
d1 g2 d a1:7 a2 d 
		}

\score {
        <<
          \new ChordNames \with { noChordSymbol = "" } \accompaniment
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        
  \midi {
    \tempo 4 = 150
    }


        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}
