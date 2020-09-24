
\header {
        title = "Pod prapory" 
        composer = "Václav Dobiáš" 
	poet = "František Halas" 
}

PrvniHlas=  {
d4 d a' a | gis a f d | g g d' d | cis d bes g |
a8 r16 bes c8 r16 b c4 a | c g r2 | f8 r16 g a8 r16 g a4 f | a4 e r2 |
d4 d a' a  | gis a f d | g g d' d | cis d bes d |
a8 r16 bes c4 r a | d4 r r2 | 
a4 g f e | d r4 r2
}

DruhyHlas= {
f8 r16 g a8 r16 gis a4 f | e e r2 | d8 r16 e f8 r16 e f4 d | cis4 cis
r2 | d4 d a' a | gis a f d | g g bes bes | a bes g g |
f8 r16 g a4 r a | d4 r r2 |
 f4 e d cis4 | d r r2 |
}

melody =\relative c' {        
\time 4/4 \key f\major 
<< \PrvniHlas
\DruhyHlas
>>
        \bar "|." 
}

text = \lyricmode {

Pod pra -- po -- ry re -- pu -- bli -- ky, 
po -- zor! vle -- vo hleď -- te ši -- ky!
při -- pra -- ve -- nì vždy -- cky k~bo -- ji,
Tá -- bor, Ži -- žka při nás sto -- jí.
S~ne -- přá -- te -- li za -- to -- čí -- me, 
na prá -- zdno my ne -- stří -- lí -- me.
Do -- bře miř a klid! Za te --  bou je lid!
}

accompaniment =\chordmode {
d1:m d:m g:m g:m
f c d:m a 
d:m d:m g:m g:m
f d:m d2.:m a4:7 d:m

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
