\version "2.20.0"
\header {
        title = "Člověk mezi hvězdami"
        composer = "Z. Marat"
	poet = "J. Fijezová"
}

melody = \relative c' { \clef treble          
\time 4/4 \key c \major
\partial 2. b8 b b b b4 | g' g r r8 g | e e d e d c c16 c8 e16 |
a8 a a e a a a d, | g4 r r8 g g g | c c c a b b b a | d2. r8 e, | 
g g g e g4 e | g8 e r4 f8 e f g | a a a a f e f g | a2. bes8 c |
d4 d \times 2/3 {c d c} | bes8 a g f g a f g | a4 r r d,8 e |
g f f4 r r8 c | 
\key a \major cis2 r | e4 fis e b' | a e e2 ~ |  e2 fis4 gis | a1 |
gis4 fis e dis | fis e e r | r2 r4 e | g g e fis | g g fis e | fis2 r
| r fis4 gis | a a fis gis | a a gis fis | gis2 r | fis4 gis a fis |
b a gis fis | e cis cis2 | r e4 fis | e e2. | e4 b2. | d4 cis2.|  r1 |
r4 a8 a a a  a4 | cis8 cis r4 r2 | r1 |


}

text = \lyricmode {
Je -- ho jmé -- no je člo -- věk.
Nic lid -- ské -- ho mu ne -- ní ci -- zí.
Snad chví -- li měl i v~kout -- ku srd -- ce strach.
když hřmě -- ly mo -- to -- ry a cíl byl v~te -- mno -- tách.
Pak nes -- mír -- né jen ti -- cho by -- lo,
šu -- mě -- ly jen pří -- stro -- je a od -- ví -- jel se pás.
a -- by na -- vždy na -- vždy -- cky za -- zna -- me -- nal pr -- vní
lid -- ský hlas me -- zi hvěz -- da -- mi. 
A on, člo -- věk do -- sud ne -- zná -- mý sám a sám 
le -- tí, le -- tí nad ná -- mi.
V~té ne -- ko -- neč -- né fi -- a -- lo -- vé tmě.
Kde i slun -- ce je jen je -- dna z~mno -- ha hvězd.
Od -- po -- ví -- dá na do -- ta -- zy ze ze -- mě měk -- kou 
zpív -- nou rus -- kou ře -- čí...
Je -- ho jmé -- no je člo -- věk.
}





accompaniment =\chordmode {
c2. f1:6 e2:7 a:m a:m6 f:6
e:m7 a:m a:m6 b:7 e1 c2 f:6
c c:7 f:6 c:7 f:5-.6 f:7 bes d:7
g:m g:7 f:6.4 bes:7 f1| a
d2:5+ e:7 a e:7 a1 fis:m fis2:m b:7 e1
e cis fis:7 b b dis:5- gis:7 cis:m d d cis:m fis
b:m e a s d a 
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


