\version "2.24.0"
\header {
        title = "Pochod demokratické mládeže"
        composer = "A. Novikov"
	poet = "L. Olšanin"
}

PrvniHlas =  \context Voice = "prvni" {
\voiceOne
\key a \major
e8. e16 e8. e16 e8. e16 a8. b16 |
cis2. cis8. d16 | b2. b8. cis16 
a2. cis,8. d16 |
e8. e16 e8. e16 e8. e16 a8. b16 |
cis2. cis8. d16 | b2. b8. cis16 
| a2. r4 | b2. a8. cis16 |
b2. cis8. a16 | d4 cis b a | gis fis e cis8. d16 |
e8. e16 e8. e16 e8. e16 a8. b16 | cis2. cis8. d16  b2. b8. cis16 |
a2. r4 |
}

DruhyHlas =   \context Voice = "druhy" { 
\voiceTwo
\key a \major

e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16 |
d2. e8. e16 |
cis2. cis8. d16 |
e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16 |
d2. e8. e16 |
 cis2. r4 |
<<{ e2. e8. e16 |e2. e8. e16 |fis4 fis d dis |  }
{ gis2. fis8. a16 | gis2. a8. fis16 | a4 a fis fis |}>>
e4 dis e cis8. d16 | e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16
d2. e8. e16 a2. r4 
}

melody =  \relative c' {        
\time 4/4\key c \major
e4 e e d8. c16 | d2 d4 b8. c16 | d4 b8. c16 d4 c8. b16 | e1
g4 g g f8. e16 f2 f4 f8. g16 | a4 f8. g16 a4 g8. f16 | e1
c'4 c  c c8. c16 | c2 b2 | b4 b b b8. b16 b2 a |
a4 g8. f16 g4 e | f4 e8. d16 e4 c | b a'8. a16 a4 b |
e,2 r4 cis8. d16  <<{\PrvniHlas}{ \DruhyHlas } >>
        \bar "|."
}

text = \lyricmode {
Z~ná -- ro -- dů ač jsme růz -- ných,
jed -- no přá -- ní teď v~nás bu -- de žít
po lé -- tech vál -- ky hrůz -- ných
zno -- vu za bla -- ho všech jdem se bít.
Z~roz -- díl -- ných svě -- ta lá -- nů,
od mo -- ří, o -- ce -- á -- nů
k~nám všich -- ni spěj -- te,
nám ru -- ku dej -- te,
vpřed s~ná -- mi má -- te jít.
Pí -- \set associatedVoice = "prvni" seň přá -- tel -- ství ať zpí -- vá,
kdo je mlád, kdo je mlád, kdo je mlád,
svo -- ji pí -- seň ne -- dá -- me si ni -- kým 
brát, ni -- kým brát, ni -- kým brát.
Pís -- nič -- ce mlá -- de -- že od -- po -- věď dá ce -- lý svět!
Svo -- ji pí -- seň ne -- dá -- me si ni -- kým brát, ni -- kým brát, 
ni -- kým brát!

}

accompaniment =\chordmode {
a1:m d1:m e1:7 a1:m
c2 c2:dim d1:m d1:7 c2 e2:7
a1:m d1:m g1:7 c1
g2:7 c2 d2:m a2:m b1:7
e2:7 r2 a1 a2. fis4:7
b2.:m e4:7 a1 a1 a2. fis4:7 b2.:m e4:7 a2. r4 e2. a4
e2. a4 d4 fis4:m b4:m b4:7 e b e2:7
a1 a2. fis4:7 b2.:m e4:7 a2. r4 
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
