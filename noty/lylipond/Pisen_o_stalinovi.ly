\version "2.24.0"
\header {
        title = "Píseň o Stalinovi"
        composer = "M. Blantěr"
	poet = "A. Surkov"
}

melody =  \relative c'' {        
\time 4/4\key c \major
g8 c, e g b a f d | c2 g'4 r | c,8 e g c b a c a |
g1 | c8 c c c c b a gis | a2 d,4 r |
e8 g c a g e f d | c1 | 
\repeat volta 2 {
e8 e dis8. e16 fis8 fis e8.fis16 |
g2 a4 r | b8 g a8. b16 c8 a8 b8. c16 | d2. (  dis4) |
e8 e e8. e16 d8 b c8. d16 |
c2 d,4 r | e8 g c8. e,16 f8 g a8. b16 | c1 |
<< { e8 e e8. e16 d8 b c8. d16 } { c8 c c8. c16 b8 gis8 a8. b16 } >> |
<< {c2 d,4 r}{ a'2 d,4 }>> 
<< { e8 g c8. e,16 f8 g a8. b16} { c,8 e e8. c16 d8 e f8. g16 } >> |
<c c,>1 ~ |
}
\alternative {{ <c c,>4 r4 r2 }{ <c c,>2.\repeatTie r4 }}
        \bar "|."
}

text = \lyricmode {
Po vla -- sti, kam o -- ko jen se dí -- vá, v~den -- ní prá -- ci ne
-- bo v~bo -- ji zlém, ná -- rod pí -- seň ra -- do -- stnou si zpí -- vá
o pří -- te -- li vel -- kém o -- tci svém.
Sta -- lin na -- še bo -- jo -- vá je slá -- va, Sta -- lin mlá -- dež
ve -- dl, jí vždy přál, s~pí -- sní svou jež ví -- tě -- zství mu dá
-- vá,
ná -- rod náš za Sta -- li -- nem jde dál,
s~pí -- sní svou jež ví -- tě -- zství mu dá
-- vá,
ná -- rod náš za Sta -- li nem jde dál dál.
}

accompaniment =\chordmode {
c2 g2:7 | c2. r4 | c2 f |
c2 g2:7 | a2:m e2:7 | f2. r4 |
c2 g2:7 | c1 | e2:m b2:7 |
e2:m d2:7 | g2 d2:7 | g2. ~ g4:7 | c2 e2:7 |
a2:m d2:7 | c2 g2:7 | c1 |
c2 e2:7 | a2:m d4:7 r4 c2 g2:7 | c1 c4 c2.

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
