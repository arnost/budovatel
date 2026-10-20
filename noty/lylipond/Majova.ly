\version "2.24.0"
\header {
        title = "Májová"
        composer = "V. Dobiáš"
	poet = "V. Závada"
}

melody =  \relative c' {
        \time 2/4\key d \major\tempo 4=100
d8 d e a | fis4 a | g8 a bes4 | a4 r | fis8 fis gis cis, |
a'4  cis | b8 cis d4 | cis4 r 
\repeat volta 2 { b b | d4. b8 | a8 g fis g |
a2 | g8 fis e fis | g4 a |}
\alternative {
{  fis2 ~ | fis4  r4  }  
{ <d d'>2 ~ | <d d'>4 r }}


        \bar "|."
}

text = \lyricmode {

Mi -- lá mo -- je mi -- lá, do -- bře je mi na té na -- ší
krá -- sné rod -- dné ze -- mi.
Já -- sej zpí -- vej, náš pra -- po -- re,
vlaj, sla -- ví -- me dnes Pr -- vní máj. máj.


}

accompaniment =\chordmode {
d4 a d2 a2:7 d fis4:m cis4
fis2:m e2 a  
g2 g2 d d a a 
d2 r2  d2  r2 
		}

\score {
        <<
          \new ChordNames \with { noChordSymbol = "" } \accompaniment
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \midi  { }
        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}
