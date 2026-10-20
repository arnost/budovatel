\version "2.24.0"
\header {
        title = "Pochod rudých námořníků"
        composer = "???"
	poet = "???"
}

PrvniHlas =  {
d'4 d8 d d4 c8 b | << c2 {c4 (  f) }>> f8 r r f, | d'4 d8 d d4 c8 b |
}

DruhyHlas={
bes4 bes8 bes bes4 a8 gis | a4 (  f) f8 r r f | bes4 bes8 bes bes4 a8 gis
}


melody =  \relative c' {        
\time 4/4\key f \major
\partial 4
c4 | f f8 g  a[ (  bes) ] f e | d4 g8 g  g[ (  f) ] e d |
c4  c'8 c  c[ ( bes) ] a g | f4 r r c | f4 f8 g  a[ bes ] f e |
d4 g8 g  g[ f ] e d | c4 c'8 c  c[ bes ] a g | f4 r r f |
\repeat volta 2 {
<<
\PrvniHlas
\DruhyHlas
>>
<c a>4 r r c, | f4 f8 g a g f e | d4 g8 g g f e d | c4 c'8 c c bes a g |
}
\alternative {{f4 r r f }{ f4 r r2}}

        \bar "|."
}


text = \lyricmode {
Tmy  vlá -- da je svr -- že -- na, zář ru -- dá za -- li -- la 
po -- vo -- deň děl -- nic -- kých mas, jen dál ru -- dí ná -- moř --
ní -- ci,
při -- lož -- te puš -- ky k~lí -- ci, ať za -- hřmí re -- vo -- lu --
ce hlas. Ha -- li
ho -- la, od lo -- di k~lo -- di od fa -- fri -- ky k~fa -- bri -- ce
jdem, a s~o -- tro -- ky ru -- ku v~ru -- ce pra -- po -- ry re -- vo --
lu -- ce po ce -- lé ze -- mi roz -- vi -- nem. Ha nem.
}

accompaniment =\chordmode {
c4 f1 bes 
c1:7 f f
bes c1:7 f
bes f bes 
f f bes 
c1:7 f f 
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
