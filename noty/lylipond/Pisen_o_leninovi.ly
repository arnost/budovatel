\version "2.24.0"
\header {
        title = "Píseň o Leninovi"
        composer = "V. Šafrannikov"
}

melody =  \relative c' {        
\time 4/4\key c \major
 e4 a8. c16 b4  g8. e16 | a4 g8. a16 e4 e | d4 f8. a16 b8 c4 b8 |
  a4 d8. a16 e2 | e'4 e8. e16 e4 a,4 | d4 d8. c16   b8. (  a16)   a4   |
 f8 a4 c8 b a4 b8 | g2. r4 | e'4 e8. e16 e4 a,4 |
d4 d8. c16  b8. (  a16)  a4    | f8 a4 c8 b d4 e8 |  a,4 (  a8)   r8 r2 |
        \bar "|."
}

text = \lyricmode {

Ne -- ze -- mřel, živ je náš Le -- nin  je s~ná -- mi, u Krem -- lu ro -- dné -- ho
on kli -- dně spí. Stří -- br -- ných je -- dlí prů -- vod ho chrá -- ní,
hvě -- zdy tam na strá -- ži spí. Stří -- br -- ných je -- dlí 
prů -- vod ho chrá -- ní hvě -- zdy tam na strá -- ži bdí.

}

accompaniment =\chordmode {
a2:m e2:m f2 c2 d2:m d2:m
f2 c2 c2 a2:m d2:m a2:m 
d2:m e2:7 c2. r4 e2:7 a2:m d2:m a2:m d2:m e2:7 a4.:m
		}

\score {
        <<
          \new ChordNames \with { noChordSymbol = "" } \accompaniment
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        
  \midi {
    \tempo 4 = 70
    }


        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}
