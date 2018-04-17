\header {
        title = "Smìr Praha";
        composer = "E. Toman";
	poet = "J. Mare¹";
}

PrvniHlas= \notes {
g4. as | a4. bes | c2. | bes | es4. () es4  d8 | f4 r8 r4 es8 |
d2.| c | es,4. f | g as | d2. | c | bes4. f | c'4. d |
c2. | bes4 r8 r4. | g4. as | a bes | c2. | bes | 
g'4. () g4  f8 | es4. () es4 d8 | d2. | 
}
DruhyHlas = \notes {
es,4. f | fis g | fis2. | g |
g4. () g4 g8 | g4 r8 r4 g8 |
a2. a | cis,4. d | e f | bes2. | a |
d,4. d | as'4. bes |
fis2. | g4 r8 r4. |
es4. f | fis g | fis2.|  g | bes4. () bes4 bes8 |
bes4. () bes4 bes8 | as2. |
}

melody = \notes \relative c' {        
\time 6/8;\key bes;
f8 r r f4 g8 | f4. d | bes'4 a8 c4 bes8 | a4. g |
es8 r r es4 f8 | es4. c | g'4 fis8 a4 g8 | f4. r |
f8 r r f4 g8 | f4. d | bes'4  a8 c4 bes8 | a4. c,4. |
a'8 r r a r bes | c8 r r r4 c,8 | g'8 r fis g r a |
f8 r f g4 a8 | bes4. a | g4 f8 es4 d8 | d4. c ( |
) c8 r c b4 c8 | a'4. g | f8 r c b4 c8 | d4. r |
r8 r f g4 a8 | bes4. a | c4 bes8 d4 bes8 | a4. g ( |
) g8 r g a4 bes8 | <{d4. () d4 }{ f4. f4 }> d8 |
bes4 f8 d'4 c8 bes8 r r r4. \bar "||";
\key es;
< \PrvniHlas \DruhyHlas>
< c8 as > r c bes4 c8 | <es8 a, > r r r4 r8 |
r4 es8 d4 es8 | <g8 bes, > r8 r r4 r8 | r4 r8 bes,8 a bes | c4. < as8
f'> r8 r | r4 r8 <d4 bes > < as8 bes > | <g4 es'> r8 r4. 
        \bar "|.";
}

text = \lyrics {
Pøes spá -- le -- ni¹ -- tì, pøes kr -- va -- vé øe -- ky,
pluk za plu -- kem jde ne -- o -- chvìj -- nì dál.
Na na -- ¹í stra -- nì srd -- ce, prá -- vo, vì -- ky,
jdem vpøed jak èas, jak pom -- sty hroz -- ný val.
S~po -- tom -- ky slav -- ných rus -- kých bo -- ha -- tý -- rù
vnuk hu -- si -- tù jde bok po bo -- ku vpøed.
Jsme zbraò i hráz ro -- dí -- cí -- ho se mí -- ru,
jsme no -- vých dnù pøed -- ní ú -- der -- ný sled.
S~ve -- li -- kou ar -- má -- dou s~ces -- ty sme -- tem vra -- hy,
s~ar -- má -- dou So -- vì -- tù do -- jde -- me do Pra -- hy,
pa -- ¾e ve -- dle pa -- ¾í stát bu -- dem na strá -- ¾i,
za prá -- ci klid, pro v¹e -- chen lid,
my uhá -- jí -- me vìè -- ný mír.

}

accompaniment =\chords {
bes2. bes bes es f f f 
bes bes bes bes f-4
f-4 f-4 c-7 f bes bes es 
es f-7 f-7 bes bes bes bes es
es bes-4 bes4. f-7 bes2.
es es es es es es 
as as bes bes bes-7 bes-7 bes-7 bes-7
es es es es es es es es as as f-7 f-7 es-4 es-4 bes-7 bes-7 es
		}

\score {
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff = mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
