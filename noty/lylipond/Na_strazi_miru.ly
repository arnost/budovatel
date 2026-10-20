\version "2.24.0"
\header {
        title = "Na stráži míru"
        composer = "V. Bělyj"
	poet = "I. Frenkel"
}

PrvniHlas =  \context Voice = "prvni" {
\voiceOne
cis4 cis r8. e16 cis8. b16 | a4 a r8. e16 a8. gis16 | fis4(
fis8.) gis16 a4 b | cis2 r8 cis8 cis8. cis16 | d4 fis,8. fis16 cis'4(
cis8.) b16 | b4 a r8 a8 gis fis | e4 a8. e16 cis'4 b | a4 r r2 |

}

DruhyHlas =   \context Voice = "druhy" {
\voiceTwo
a4 a r8. e16 a8. e16 | cis4 cis r8. e16 cis8. e16 | fis4(
fis8.) fis16 fis4 d |
cis2 r8 cis'8 cis8. cis16 | b4 fis8. fis16 eis4 ( eis8.) cis16 | fis4
fis r8 fis gis fis | e4 a8. e16 e4 e | a4 r r2 |
}

melody =  \relative c' {        
\time 4/4\key c \major
        \bar "|."
e4 dis8. e16 a4 a8. g16 | f4 c8. d16 e2 | e4 dis8. e16 c'4 b8. a16 |
g4 g8. a16 e2 | e4 f8. g16 a4 a8. a16 | b4 gis8. e16 c'2 | c4 b8. a16
e'4 e, | c'4 b a8 r16 e < e' cis >8. < d b >16 | 
\key a \major
<<\PrvniHlas
\DruhyHlas
>>
}

text = \lyricmode {
Bo -- há -- či chtí, a -- by vzplál vá -- lky žár, svět a -- by šel zno --
vu na smrt a zmar leč pro -- ti nim mi -- li -- o -- ny jsou nás, a
-- rmá -- da mí -- ru vy -- šla včas! Na strá -- \set associatedVoice = "prvni" ži mí -- ru chce li
-- dstvo bý -- ti! Teď k~ze -- mi zem a svor -- ně jít! Jak dě -- la
vý -- střel slyš vý -- zvy hřmí ti hlas je -- den: Vá -- lka již ne
-- smí být.

}

accompaniment =\chordmode {
a1:m f2 e2:7 | a2:m d2:m g2:7 c |
c2:7 f e:7 a:m f:7 a2.:m e4:7 a2 |
a1 a1 d cis b2:m cis fis2:m d |
a2 a:7 a4 r r2
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
