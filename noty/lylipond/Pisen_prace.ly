\version "2.24.0"
\header {
        title = "Píseň práce"
        composer = "J. Scheu"
	poet = "J. Zapf"
}

melody =  \relative c' {
        \time 4/4\key f \major
	\partial 4
c4 | \repeat volta 2 { f4. c8 a4 c | f g a f8 (  g) | a4. g8 a4 bes |
c4. bes8 a4 g | f4 e8 (  f) a4. g8 | g4 r r c, |
e4. c8 e  f g a | bes2 (  bes8) r c,4 | a'4. g8 f8 (  g) a (  bes) |
c4. bes8 a4 f | d'2 d | c4 r r f, | g2 c2 |
}
\alternative{{ f,4 r r c }{ f4 r r2 }}

        \bar "|."
}

text = \lyricmode {
Ó, za -- zni pí -- sni vzne -- še -- ná, o prá -- ci kte -- rá
vro -- ze -- na pří -- ro -- dou lid -- stvu jest. Vše, če -- ho člo
-- věk u -- ží -- vá, z~šle -- che -- tné prá -- ce vy -- plý --
vá. Buď prá -- ci čest, buď prá -- ci čest. Ta čest.
}

accompaniment =\chordmode {
r4 f2. c4:7 d4:m c4:7 f2.  c4:7 f c:7
f2. c4:7 d2:m g2:7 c2:7 r2
c2:7 c2:7 g2.:m c4:7 f c:7 f2
f2. f4:7 bes2 bes2 f4 r2 d4:m g2:m c2:7 
f4 r2. f4 r2.
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

