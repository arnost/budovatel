\version "2.24.0"
\header {
        title = "Se zpěvem a smíchem"
        composer = "J. Stanislav"
	poet = "O. Rambousková"
}

melody =  \relative c' {
        \time 4/4\key f \major
\partial 4
c4 | d f g a | c8. a16 c4 r c, | d f g a |
c2 r4 d | g, g g a | bes4. a8 g4 d' | c a g f |
c'2 r4 c,4 | << {c'4. a8 d4 c } { a4. f8 bes4 a} >> | 
<<{ bes a g c, }{ g' f c c }>> | <<{c'4. a8 d4 c }{ a4. f8 bes4 a}>> |
<<{bes a g c,}{ g' f c c }>> | d d e e | f g a c | bes a g a |
<<{c2. c4}{ a2. a4}>> | <<{bes4 a g a }{ g f c c }>> | <<{f2.}{ f2.}>>
        \bar "|."
}

text = \lyricmode {
Zní zpěv a smích náš po kra -- ji, zní v~kaž -- dý směr i kout,
tam kde se ko -- sy blý -- ska -- jí a kde zříš o -- cel kout.
Jen ro -- ze -- zvuč se je -- ště víc a ro -- ze -- zpí -- vej z~pl --
ných plic ty ze -- mě, kte -- rá ro -- díš lid, jenž krá -- čí slun --
ci vstříc, jenž krá -- čí slun -- ci vstříc.

}

accompaniment =\chordmode {
r4 f2 g4:m c4:7 f2. c4:7 f2 g4:m c4:7
f1 bes2. d4:m g2:m c2:7 f2 g2:7 
c1 f2 d2 g2:m c2 f2 d g2:m c2 bes2 c2:7 f1 bes2 c2 
f2. d4:7 g2:m c2:7 f2.

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



