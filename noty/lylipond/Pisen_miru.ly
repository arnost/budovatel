\version "2.24.0"
\header {
        title = "Píseň míru"
        composer = "D. Šostakovič"
	poet = "Jevgenij Dolmatovskij"
}

PrvniHlas = {        
b'4 b8 b | b8 (  cis) d b | a4. (  fis8) | e4 (  e8) r8 | a4 fis8 (  g)
| a8 (  d) cis b a2 | a4 fis8 g |  a8[ (  d) ] cis b | cis2 | cis4
ais8 (  b) | cis8 (  ais) b cis | dis2 |
e2 ( |  e4) b8 cis | d4 cis d2 ( |  d8) r r4 
} 

DruhyHlas =  {
g,4 g8 g | g8 (  a) b g | fis4. (  d8) | cis4 (  cis8) r | fis4 d8 (  e)
| fis (  b) a g | fis2 | fis4 d8 e |  fis8[ (  b) ] a gis | a2 | ais4
fis8 (  gis) | ais (  fis) gis a | << { b4 (  b) } { a4 } >> |
<< { gis2 ( |  gis4) gis8 gis | g4 g fis2 ( |  fis8) r r4 |}
{ b2 (|  b4) b8 b | b4 a | a2 ( |  a8) }
>>
}


melody =  \relative c' {        
\time 2/4\key d \major
\partial 4
a8. a16 | a'4 fis8. e16 | d4 e8. fis16 | g4 fis8. e16 
| a4 d,8. d16 | b'4  a8. g16 | a4 fis8. d16 | e4. (  fis8) 
| e8 r a,8. a16 | a'4 fis8. e16 d4 e8. fis16 | g4  fis8. e16
| a4 d,8. d16 | << \PrvniHlas \DruhyHlas >>
\bar "|."
}


text = \lyricmode {
Z~na -- šich pra -- po -- rů k~nám vo -- lá mír v~šíř i dál, ru -- dá
krev hr -- di -- nů zá -- ří na nich. Ná -- rod náš ce -- stou mí -- ru se
k~bu -- dou -- cnu dal, ka -- ždý z~nás vla -- stní pra -- cí mír dnes
brání. Jaro si vybo -- jo -- val lid,
roz -- kve -- tla lou -- ka i stráň. My chceme praco --  vat a
žít, mír vyr -- ve vál -- ce zbraň.
}

accompaniment =\chordmode {
r4 d1 e4:m a4:7 d2 g2
d2 g2 a2 d1 e4:m a4:7 d2
g1 d2 a d1. d2. e4:7 a2 fis1 b2 e1 g4 a4:7 d2.
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
