\version "2.20.0"
\header {
        title = "Směr Praha" 
        composer = "E. Toman" 
	poet = "J. Mareš" 
}

PrvniHlas=  {
g4. as | a4. bes | c2. | bes | es4. ( es4 )  d8 | f4 r8 r4 es8 |
d2.| c | es,4. f | g as | d2. | c | bes4. f | c'4. d |
c2. | bes4 r8 r4. | g4. as | a bes | c2. | bes | 
g'4. ( g4 )  f8 | es4. ( es4 ) d8 | d2. | 
}
DruhyHlas =  {
es,4. f | fis g | fis2. | g |
g4. ( g4 ) g8 | g4 r8 r4 g8 |
a2. a | cis,4. d | e f | bes2. | a |
d,4. d | as'4. bes |
fis2. | g4 r8 r4. |
es4. f | fis g | fis2.|  g | bes4. ( bes4 ) bes8 |
bes4. ( bes4 ) bes8 | as2. |
}

melody =  \relative c' { 
\clef treble       
\time 6/8 \key bes \major
f8 r r f4 g8 | f4. d | bes'4 a8 c4 bes8 | a4. g |
es8 r r es4 f8 | es4. c | g'4 fis8 a4 g8 | f4. r |
f8 r r f4 g8 | f4. d | bes'4  a8 c4 bes8 | a4. c,4. |
a'8 r r a r bes | c8 r r r4 c,8 | g'8 r fis g r a |
f8 r f g4 a8 | bes4. a | g4 f8 es4 d8 | d4. c ~ |
 c8 r c b4 c8 | a'4. g | f8 r c b4 c8 | d4. r |
r8 r f g4 a8 | bes4. a | c4 bes8 d4 bes8 | a4. g ~ |
 g8 r g a4 bes8 | <d f>4. ( q4 ) d8 |
bes4 f8 d'4 c8 bes8 r r r4. \bar "||" 
\key es \major
<< \PrvniHlas \DruhyHlas >>
< c as > 8 r c bes4 c8 | <es a, >8 r r r4 r8 |
r4 es8 d4 es8 | <g bes, >8 r8 r r4 r8 | r4 r8 bes,8 a bes | c4. < as
f'>8 r8 r | r4 r8 <d bes >4 < as bes >8 | <g es'>4 r8 r4. 
        \bar "|." 
}

text = \lyricmode {
Přes spá -- le -- niš -- tě, přes kr -- va -- vé ře -- ky,
pluk za plu -- kem jde ne -- o -- chvěj -- ně dál.
Na na -- ší stra -- ně srd -- ce, prá -- vo, vě -- ky,
jdem vpřed jak čas, jak pom -- sty hroz -- ný val.
S~po -- tom -- ky slav -- ných rus -- kých bo -- ha -- tý -- rů
vnuk hu -- si -- tů jde bok po bo -- ku vpřed.
Jsme zbraň i hráz ro -- dí -- cí -- ho se mí -- ru,
jsme no -- vých dnů před -- ní ú -- der -- ný sled.
S~ve -- li -- kou ar -- má -- dou s~ces -- ty sme -- tem vra -- hy,
s~ar -- má -- dou So -- vě -- tů do -- jde -- me do Pra -- hy,
pa -- že ve -- dle pa -- ží stát bu -- dem na strá -- ži,
za prá -- ci klid, pro vše -- chen lid,
my uhá -- jí -- me věč -- ný mír.

}

accompaniment =\chordmode {
bes2. bes bes es f f f 
bes bes bes bes f:4
f:4 f:4 c:7 f bes bes es 
es f:7 f:7 bes bes bes bes es
es bes:4 bes4. f:7 bes2.
es es es es es es 
as as bes bes bes:7 bes:7 bes:7 bes:7
es es es es es es es es as as f:7 f:7 es:4 es:4 bes:7 bes:7 es
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
