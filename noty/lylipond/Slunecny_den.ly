\version "2.20.0"
\header {
        title = "Slunečný den"
        composer = "Alois Palouček"
	poet = "Jiří Horčička"
}

melody = \relative c' { \clef treble       
\time 4/4 \key f \major
f4 f8 f e4 e | d d e r |
< f f > < f f >8 <c g' > < f a >4 < es c'  > |
<d d' > < d c'> <e bes' > <fis a > | < g g > < f g  >8 < f g > < e a  >4 <e a>|
f f c r |  < bes d g>  < bes d g>8  < bes d g> <c e a>4 <c e a>|
<d f bes > <d f bes > <e g c> <e g c> \times 2/3 { c'4 a g } f c  |
d <bes g' > c r |  <bes d> <bes d>8 <bes d>  <bes g'>4   <bes g'> 
< bes des> <bes des> <bes g'> <bes g'> \times 2/3 { c4 c c } 
<bes d g > <c e a > | f <e a> <es c'> r | 
c'8 a g4 e8 d c e | d2 c4 r |
r2 <g d' f bes>4 <c e g c>  <c f a>2 f | 
<bes, d g >4 <bes d> <bes c e > <c e a>
f2 c4 r | r2 <d f bes>4 <e g c> | <f a>2 f | g4 g f <e g >
<d fis a >2. r4 | r2 <d f bes >4 <e bes> | <e a>2 f | g4 g f g |
<f a >2 f4 r | r <d f bes> <d f bes> <e g c> | <f a>2. f4 |
<bes, g'> <bes d> <c e> <e a> | f2. r4
        \bar "|."
}

text = \lyricmode { Mo -- dré jsou kvě -- ty na lou -- ce a ja -- ko má
-- ky dív -- ky na ní na po -- li zlá -- tne pše -- ni -- ce slun --
ce ji hla -- dí te -- plou dla -- ní.  Jen ty se, slun -- ce u -- smí
-- vej, na li -- di, lou -- ky, žit -- né kla --sy, do o --čí na --
šim dív -- kám dej per -- lič -- ku u -- smě -- va -- vé krá -- sy.  A
-- by mí -- rem kve -- tla na -- še mě -- sta, a -- by chle -- bem vo
-- něl ce --lý svět a -- by šťast -- ně za -- po -- ča -- tá ce -- sta
do -- ve -- dla nás do nej -- krás -- něj -- ších let.

 }

accompaniment =\chordmode {
f1 g2:min c:7 f c:min d1:7 g2:min c:7 f1
g2:min a:min g:min c:7 
f1 bes2 f bes1 bes:min c:7 f2 c:dim
c1 d4:min g:7 c1 
g4:min c:7 f1 g2:min c:7 f1. g4:min c:7 f1 c:7
d1. g4:min c:7 f1 g2.:min c4:7 f1 f4
g2:min c4:7 f1 c:7 f

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
                               \midi  { \tempo 4=180}
                               \layout { linewidth = 20.0\cm }
                       }


