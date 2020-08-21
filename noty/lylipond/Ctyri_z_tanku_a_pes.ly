\version "2.20.0"
\header {
        title = "Čtyři z tanku a pes"
        composer = "Wojciech Kilar"
	     poet = "Agnieszka Osiecka a Wiktor Woroszylski"
}

melody =  \relative c' { \clef treble         
\time 4/4
\key es \major
c4 es d es | c4 c2. | g'8 bes g2 f4 | g2 . r4 | c,4 c c8 es 4 g8 |
d4 d2.  es4 c2 bes8 d | c2. r4 | c8 es g2 g4 | bes a g2 |
g4 fis8 g a f4. | d2. r4 | es8 g g a  d,2 | c8 es g2. | bes8 a g2. |
es4 g c2 | a4 bes g2 | a4 g fis bes | g2. r4 
}

text = \lyricmode {
Bou -- ře jde do dá -- lky,
v~sa -- dech kvít -- ka rve,
my jsem vyš -- li do vál -- ky,
v~bou -- ři ny -- ní jsme.
Však jed -- nou to skon -- čí kdes,
my čty -- ři a náš pes
vrá -- tí -- me se zpět
za -- tím však je to sen
my čty -- ři s~na -- ším psem
je -- dem stá -- le vpřed.
}

accompaniment =\chordmode {
c2:m g:7 | c1:m | g:m | q |  c:m |
g:7 | c2:m g:m | c1:m | q | g1:m |
s2 d2:m | q1 | c2:m g:m | c1:m | q |
q | d2:7 g:m | d1:7 | g:m
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
       \midi  { \tempo 4=170}
       \layout { linewidth = 20.0\cm }
}


