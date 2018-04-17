\header {
        title = "Sluneèný den"
        composer = "Alois Palouèek"
	poet = "Jiøí Horèièka"
}

melody = \notes \relative c' {        
\time 4/4 \key f \major
f4 f8 f e4 e | d d e r |
< f f > < f8 f > <c g' > < f4 a > < es c'  > |
<d d' > < d c'> <e bes' > <fis a > | < g g > < f8 g  > < f g > < e4 a  > <e a>|
f f c r |  < bes d g>  < bes8 d g>  < bes d g> <c4 e a> <c4 e a> |
<d f bes > <d f bes > <e g c> <e g c> \times 2/3 { c'4 a g } f c  |
d <bes g' > c r |  <bes d> <bes8 d> <bes8 d>  <bes4 g'>   <bes4 g'> 
< bes4 des> <bes4 des> <bes g'> <bes g'> \times 2/3 { c4 c c } 
<bes4 d g > <c e a > | f <e a> <es c'> r | 
c'8 a g4 e8 d c e | d2 c4 r |
r2 <g4 d' f bes> <c e g c>  <c2 f a> f | 
<bes,4 d g > <bes d> <bes c e > <c e a>
f2 c4 r | r2 <d4 f bes> <e g c> | <f2 a> f | g4 g f <e g >
<d2. fis a > r4 | r2 <d4 f bes > <e bes> | <e2 a> f | g4 g f g |
<f2 a > f4 r | r <d f bes> <d f bes> <e g c> | <f2. a> f4 |
<bes, g'> <bes d> <c e> <e a> | f2. r4
        \bar "|."
}

text = \lyrics { Mo -- dré jsou kvì -- ty na lou -- ce a ja -- ko má
-- ky dív -- ky na ní na po -- li zlát -- tne p¹e -- ni -- ce slun --
ce ji hla -- dí te -- plou dla -- ní.  Jen ty se, slun -- ce u -- smí
-- vej, na li -- di, lou -- ky, ¾it -- né kla --sy, do o --èí na --
¹im dív -- kám dej per -- liè -- ku u -- smì -- va -- vé krá -- sy.  A
-- by mí -- rem kve -- tla na -- ¹e mì -- sta, a -- by chle -- bem vo
-- nìl ce --lý svìt a -- by ¹»ast -- nì za -- po -- èa -- tá ce -- sta
do -- ve dla nás do nej -- krás -- nìj -- ¹ích let.

 }

accompaniment =\chords {
f1 g2:min c:7 f c:min d1:7 g2:min c:7 f1
g2:min a:min g:min c:7 
f1 bes2 f bes1 bes:min c:7 f2 c:dim
c1 d4:min g:7 c1 
g4:min c:7 f1 g2:min c:7 f1. g4:min c:7 f1 c:7
d1. g4:min c:7 f1 g2.:min c4:7 f1 f4
g2:min c4:7 f1 c:7 f

 		}

                       \score {
                               \simultaneous {
                       %         \accompaniment
                                 \context ChordNames \accompaniment

                                 \addlyrics
                                   \context Staff = mel {
                                     \property Staff.AutoBeaming = ##f
                                     \property Staff.automaticMelismata = ##t
                                     \melody
                                   }
                                   \context Lyrics \text
                               }
                               \midi  { \tempo 4=180}
                               \paper { linewidth = 20.0\cm }
                       }


