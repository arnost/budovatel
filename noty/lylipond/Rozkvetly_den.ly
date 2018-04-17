\header {
        title = "Rozkvetlý den";
        composer = "Radim Drejsl";
	poet = "Miloslav Zachata";
}

melody = \notes \relative c'' {        
\time 4/4;\key es \major;
c8. es16 c8 r r2 | bes8. c16 bes2. |
as8 g f g as4 bes | g2. r4 |
as8 g f g as4 bes | g2 es4 r | es8 d c d es4 f | d2. r4 |
c'8. es16 c8 r r2 | bes8. c16 bes2. |
as8 g f g as4 bes | g2. r4 |
as8 g f g as4 bes | g2 es4 r | es8 d c d es4 f | d1 |
\key c\major;
e2 d4 c | g'2 r8 g a b | c4 g f e | g2 r8 g a b |
c4 g f e | a g a g | f a g f8 e | d2. r4 | 
<e2 g > <a4 d,> <a c,> | <g2 b> r8 <g8 b> <a c> <b d> |
<c4 e> <c g> <a f> <g e> | <g2 b> r8 <g8 b> <a c> <b d> |
<c4 e> <c g> <a f> <g c,> | <f8 a > <a4 c> <{a8 () a4}{ c8 () c4}> <a
f> | d, f f b, | d8 c d e g g a b | <c4 e> <c g> <a f> <g c,> | <f8 a > <a4 c> <{a8 () a4}{ c8 () c4}> <a
f> | d, f f <g d'> | c1 |


}

text = \lyrics {
Bez chle -- ba nej -- de jíst a bez vo -- dy nej -- de pít,
bez o -- èí se ne -- dá dí -- vat,
bez ra -- do -- sti nej -- de ¾ít.
A» je tak, ne -- bo tak, ze ¾i -- vo -- ta ví -- ce má,
je -- nom ten kdo ¾i -- vot ¾i -- je, 
ne¾ ten, kter -- rý ne -- vní -- má.
®e ka¾ -- dý den za -- èí -- ná tmou, kon -- èí slun -- cem sta -- èí
se je -- nom tro -- chu po -- roz -- hléd -- nout, 
ko -- lik je ko -- lem krás,
dým z~to -- vá -- ren a hou -- fy dì -- tí nad pís -- kem,
ti -- sí -- cem vì -- cí ¾i -- vot roz -- kvé -- tá a roz -- ví -- jí
se, roz -- ví -- jí se v~nás, ti -- sí -- cem vì -- cí ¾i -- vot roz
-- kvé -- tá a roz -- ví -- jí se v~nás.

}

accompaniment =\chords {
		}

                       \score {
                               \simultaneous {
                       %         \accompaniment
                                 \context ChordNames \accompaniment

                                 \addlyrics
                                   \context Staff = mel {
                                     \property Staff.noAutoBeaming = ##t
                                     \property Staff.automaticMelismata = ##t
                                     \melody
                                   }
                                   \context Lyrics \text
                               }
                               \midi  { \tempo 4=120;}
                               \paper { linewidth = 20.0\cm; }
                       }


