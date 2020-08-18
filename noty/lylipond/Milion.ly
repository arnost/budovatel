\version "2.20.0"
\header {
        title = "Milion" 
        composer = "Jiří Sternwald" 
	poet = "Vratislav Blažek, Jiří Sternwald" 
}

melody = \relative c' { 
\clef treble       
\time 4/4 
\key c \major 
r4 e8. g16  c4 b | a b a g | a g e e |
f g d2 | c4 e a c | b gis a e | 
d e fis a | g a b2 | c4 c b b |
a b a g | a e e   e8 g   | f2.  e8 d  |
c4 e d f | e g b a | g g a b | c r r c, \bar "||" 
\key f\major  f a c a | r bes8. d16   c8 r r4 |
r2 r4 c, | f a c a | bes c a r4 | r2 r4 f | 
bes d a bes | a bes  b8 c r4 |
f,8 a g f   e d  r4 | e4 f  fis8 g  r4 |
f r a r | g2 r8 bes4. | a4 c bes d | c2. d4 |
f f e d | c d bes c | a a g g | f2. c'8. a16 c2. bes8. g16  |
f2. c'8. a16 | c2. bes8. g16  | f2. d'8. e16 | f4 d c bes |
a4 g8 f (  f4 ) r 
        \bar "|." 
}

text = \lyricmode {
že si brou -- ká brou -- ček v~trá -- vě, ni -- kdo ať se ne -- di --
ví i ten cvr -- ček bez pís -- nič -- ky měl by ži -- vot še -- di --
vý.

Hra -- je cvr -- ček na hou -- slič -- ky. čme -- lák bom -- bar --
don, a -- le na -- ko -- nec se se -- jdou vždyc -- ky zna -- jí sprá
-- vný  tón. 

Když flé -- tna pí -- ská ja -- ko myš a ba -- sa bru -- čí níž a níž,
nám ne -- smí ta -- hle po -- tíž va -- dit, mu -- sí -- me je to --
tiž u -- mět sla -- dit.

Vtip je v~tom vzít vši -- chni sprá -- vný tón a mů -- že nás hrát do
-- hro -- ma -- dy tře -- ba mi -- li -- on, mi -- li -- on, mi -- li
-- on,
mi -- li -- on, mi -- li -- on, mů -- že nás hrát tře -- ba mi -- li -- on.



}

accompaniment =\chordmode {
c1 | c2:dim  b:m7.5- | c:6 g:dim |
d:m g | c a: m | e:7 a:7 | d1:7 |
g:7 | c2 e:m | c:dim b:m7.5- |
c:6 g:dim | d:m g | c d:m | c c:dim |
g g:7 | c1 | f | bes2 f | d:7 c:7 |
f1 | bes2 f | bes f | bes a:m | f1 |
d:m | c:7 | d:m7 | g:m |
f2 g:m7 | f1 | g2:m7 e | 
f d:7 | g:7 c:7 | f1 | c:7 | f |
c:7 | f | bes2 a:m | g4:7 c:7 f s |
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
       \midi  { \tempo 4=220 }
       \layout { linewidth = 20.0\cm  }
}


