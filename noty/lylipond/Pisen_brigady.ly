\version "2.20.0"
\header {
        title = "Píseň brigády" 
        composer = "Dmitrij Šostakovič" 
	poet = "B. Kornilov" 
}

melody =  \relative c'' {        
\time 2/4 \key f\major 
\partial 8 
c8 | c4 d8 c | bes4 a8 g | f4 c ~|  c r8 c |
f4 g8 a | bes4 a8 g | c2 ~ |  c4 r8 c | c4 d8 c |
bes4 a8 g f4 c | r r8 f  | bes4 a8 g | c4 a8 g |
f2 | r4 r8 f | g4. a8 | bes4. d8 | c4. a8 |
f4 f' |  d2 | bes2 c | r4 r8 f, | f'4. f8 |
e4. d8 c4. a8 d4 c | bes2 | g | f | r 
        \bar "|." 
}

text = \lyricmode {
Nás vzbu -- di -- lo rá -- no již chla -- dné, 
sem od ře -- ky ví -- tr jde blíž. Což ty ne -- máš ra -- do -- sti žá
-- dné, když si -- ré -- ny tón u -- sly -- šíš?
Jen vzbuď se vstá -- vej, dí -- vko má si -- ré -- na zní, teď ze --
mì na -- še jí -- ti má do no -- vých dní.
}

accompaniment =\chordmode {
r8 f2 c:7 f1. c2:7 f1. c2:7 f1 bes2 c2:7
f1 bes2 c2:7 f1 bes f bes f2 d2:7 g:m c:7 f
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
