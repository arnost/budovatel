\header {
        title = "";
        composer = "";
	poet = "";
}

PrvniHlas=  \notes  \context Voice=prvni{
%\property Voice.verticalDirection = \up
d4 d a' a | gis a f d | g g d' d | cis d bes g |
a8 r16 bes c8 r16 b c4 a | c g r2 | f8 r16 g a8 r16 g a4 f | a4 e r2 |
d4 d a' a  | gis a f d | g g d' d | cis d bes d |
a8 r16 bes c4 r a | d4 r r2 | 
\property Voice.verticalDirection = \down
a4 g f e | d r4 r2
}

DruhyHlas= \notes  \context Voice=druhy{
\property Voice.verticalDirection = \down
d4 d a' a | gis a f d | g g d' d | cis d bes g |
f8 r16 g a8 r16 gis a4 f | e e r2 | d8 r16 e f8 r16 e f4 d | cis4 cis
r2 | d4 d a' a | gis a f d | g g bes bes | a bes g g |
f8 r16 g a4 r a | d4 r r2 |
\property Voice.verticalDirection = \up
 f4 e d cis4 | d r r2 |
}

melody = \notes \relative c' {        
\time 4/4;\key f;
< \PrvniHlas
\DruhyHlas>
        \bar "|.";
}

text = \lyrics {

Pod pra -- po -- ry re -- pu -- bli -- ky, 
po -- zor! vle -- vo hleï -- te ¹i -- ky!
pøi -- pra -- ve -- nì v¾dy -- cky k~bo -- ji,
Tá -- bor, ®i -- ¾ka pøi nás sto -- jí.
S~ne -- pøá -- te -- li za -- to -- èí -- me, 
na prá -- zdno my ne -- støí -- lí -- me.
Do -- bøe miø a klid! Za te --  bou je lid!
}

accompaniment =\chords {
d1-min d-min g-min g-min
f c d-min a 
d-min d-min g-min g-min
f d-min d2.-min a4-7 d-min

		}

\score {
        \simultaneous  {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff=mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
