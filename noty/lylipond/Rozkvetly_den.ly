\version "2.20.0"
\header {
        title = "Rozkvetlý den" 
        composer = "Radim Drejsl" 
	poet = "Miloslav Zachata" 
}

melody =  \relative c'' { 
\clef treble       
\time 4/4 
\key es \major 
c8. es16 c8 r r2 | bes8. c16 bes2. |
as8 g f g as4 bes | g2. r4 |
as8 g f g as4 bes | g2 es4 r | es8 d c d es4 f | d2. r4 |
c'8. es16 c8 r r2 | bes8. c16 bes2. |
as8 g f g as4 bes | g2. r4 |
as8 g f g as4 bes | g2 es4 r | es8 d c d es4 f | d1 |
\key c\major 
e2 d4 c | g'2 r8 g a b | c4 g f e | g2 r8 g a b |
c4 g f e | a g a g | f a g f8 e | d2. r4 | 
<e g >2 <a d,>4 <a c,> | <g b>2 r8 <g b>8 <a c> <b d> |
<c e>4 <c g> <a f> <g e> | <g b>2 r8 <g b>8 <a c> <b d> |
<c e>4 <c g> <a f> <g c,> | <f a >8 <a c>4 q8 ( q4 )  <a f> | 
d, f f b, | d8 c d e g g a b | <c e>4 <c g> <a f> <g c,> | <f a >8 <a c>4 q8 ( q4 ) <a f> | d, f f <g d'> | c1 |

}

text = \lyricmode {
Bez chle -- ba nej -- de jíst a bez vo -- dy nej -- de pít,
bez o -- čí se ne -- dá dí -- vat,
bez ra -- do -- sti nej -- de žít.
Ať je tak, ne -- bo tak, ze ži -- vo -- ta ví -- ce má,
je -- nom ten kdo ži -- vot ži -- je, 
než ten, kter -- rý ne -- vní -- má.
®e kaž -- dý den za -- čí -- ná tmou, kon -- čí slun -- cem sta -- čí
se je -- nom tro -- chu po -- roz -- hléd -- nout, 
ko -- lik je ko -- lem krás,
dým z~to -- vá -- ren a hou -- fy dì -- tí nad pís -- kem,
ti -- sí -- cem vì -- cí ži -- vot roz -- kvé -- tá a roz -- ví -- jí
se, roz -- ví -- jí se v~nás, ti -- sí -- cem vì -- cí ži -- vot roz
-- kvé -- tá a roz -- ví -- jí se v~nás.

}

accompaniment =\chordmode {
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
         \midi  { \tempo 4=120 }
         \layout { linewidth = 20.0\cm  }
 }


