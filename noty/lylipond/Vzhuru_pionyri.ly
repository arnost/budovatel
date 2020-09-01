\version "2.20.0"
\header {
        title = "Vzhůru pionýři" 
        composer = "J. Tausinger" 
	poet = "M. Povondra" 
}

PrvniHlas = {
r4 a | b g | e fis8 g | a4 fis | d e8 fis | g4 e | cis fis |
d2 ~ |  d8 r d cis | b4 b | b8 d g b | d4 cis8 b | a4 b | g2 ~ |  g8
r a4 | fis2 ~ |  fis8 r d cis | b4 b | b8 d g b | d4 cis8 b |
a4 ais | b d ~ |  d cis | d < b g > | <  d a fis > r
}

DruhyHlas =   {
r4 a | g e | cis d8  e | fis4 ais, | b cis8 d | e4 cis | cis ais 
b2 ~ |  b8 r d cis | b4 b | b8 d g b | b4 a8 gis | fis4 dis | e2 ~ | 
 e8 r cis4 | d2 ~ |  d8 r d cis | b4 b | b8 d g b | b4 a8 gis |fis4
 fis | g e ~ |  e a | f 
}

melody =  \relative c' {        
\time 2/4 \key d \major
fis8. g16 fis8 e | d4 a |
a' b8. g16 | a4 g8. fis16 | e4 a ~ |  a  fis |
 <<  {  d2  } { s4 \times 2/3  {  e8 ( fis  a  ) } } >>  |
 g8. fis16  e8. a16 | fis8. g16 fis8 e | d4 a | a'4 b8. g16 |  a4 b | cis e,  ~ | e b' | a r |
<<
\PrvniHlas
\DruhyHlas
>>
        \bar "|." 
}

text = \lyricmode {
Vzhů -- ru pi -- o -- ný -- ři, dnes ce -- lý svět už se dí -- vá na
nás. - - - - -
Na -- še ce -- sta mí -- ří vpřed, ni -- kdy zpět, je do prá -- ce
čas.
My má -- me svou pra -- vdu ví -- tě -- znou, po -- ne -- sem ji hr --
dě dál, s~ru -- dým šá -- tkem nad hla -- va -- mi na po -- cho -- du
jdem dál, jdem dál, sou -- druh Go -- ttwald je vždy s~ná -- mi, s~ním
ku -- pře -- du, pi -- o -- ný -- rům zdar!
 


}

accompaniment =\chordmode {
d1 d4 g d2 a1 d2 |
e4:m a | d1 d4 g d e:7 a2. e4:7 a1
g2 a:7 d4 fis b2:m e:m fis
b1:m g cis2:7 fis4:m b e2.:m  
a4:7 d1 g cis2:7 fis4:m fis g2. a4:7 d4 g d 
 
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
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}

