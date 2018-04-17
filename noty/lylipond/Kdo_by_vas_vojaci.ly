\header {
        title = "Kdo by vás vojáci";
        composer = "Al. ©ebestík";
}
\include "paper16.ly"



melody = \notes \relative c'' {
 \time 2/4;\key d;
   a8 fis a4 | d8 cis4 b8 | a4  b  | fis2 |
   e4 fis | g8 g a b | cis cis b fis | a2 |
   b4 b | e, e | g8 g fis g | a4 r |
   b8 b e d | a4 fis | g8 e fis g | a2 |
   b8 b e d | a4 fis  | g8 e fis e | d2 |
        \bar "|.";
}

text = \lyrics {
Kdo by vás vo -- já -- ci ne -- mìl rád,
kdy¾ vás u ka -- sá -- ren vi -- dí bdì -- le stát
rá -- no, ve -- èer, v~no -- ci na strá -- ¾i,
a -- by ne -- pøe -- kroèil ¹kù -- dce zá -- pra -- ¾í,
a -- by ne -- pøe -- kr -- èil ¹kùd -- ce zá -- pra -- ¾í.
}


refren = \lyrics {
A -- by du -- chu mí -- ru nad ná -- mi
ne -- mo -- hl nám roz -- bít svý -- mi bob -- ba -- mi.
Pro -- to vás, vo -- já -- ci v¹e -- chen lid
mi -- lu -- je, v¾dy» vy jste je -- ho tvrz a ¹tít,
v¾dy» vy jste je -- ho tvrz a ¹tít.
}


PrvniHlas = \notes \relative c'' {
        \time 2/4;\key g;
b8 b a g | d'4( )c8   b | a4  e | e  r |
b'8 b a g | d'4 b | a8 g fis g | a4 r |
g8 g a4 | b8 a4 g8 | c4 d | e r |
d8 e d b | a g fis g | b4 b   |b2  |
r8 a b g   | e'4 d | a r | b r |  g2 ( | ) g8  r8 r4 
\bar "|.";
}


DruhyHlas =  \notes \relative c'' {
        \time 2/4;\key g;
g8 g d b |  b'4 ( ) a8  g |  e ( ) d   c ( ) b  | c4 r |
d8 e fis g | b4 g | fis8 e d e | fis4 r |
f4  f  | f2  | e4 g | c r |
b8 c b g | fis e d e |  
<  {  cis4 dis } { e fis} >  | < { g2 } {  e4 ( ) d } > | < { c, d8 f
        } { e4 f8 f  } > |
< { e4 fis } { c' b } > | < c e > r | < d fis > r |  <  b2 d > ~      < b8 d >  r8 r4 |
\bar "|.";
}

trubka =  \notes \relative c'' {
        \time 2/4;\key d;
a8 a16 a \times 2/3 { a8 f a } | d4 a |  b8 b16 b \times 2/3 {b8 g b}
         | e4 b | g8 fis'16 fis e4 ( ) d | a8 fis'16 fis e4 ( ) d | a'8. a,16
        \times 2/3 { a8 a a }| a4 r |
}

AkordyTrubka = \chords {
d2 d2  g2 g2 d2 d2 a4-7 f4-7 a2
}

AkordyRefren = \chords {
g2 g2 a2-min d2-7
g2 b4-min e4-min a2-7 d2
g2-7  g2-7 c4 g c4 cis4-dim
g2 d2 a4-7 b4 e2-7
a4-min g4-7 c4 b4-min a2-min d2-7 g1
}


accompaniment =\chords {
 d2  b2-min  fis4-min  g4-7  d2  
 e4-min  b4   a2-7 d1  
 g2 e2-min  a2 d2    
 g4 g4-7  d2  e2-min d2  
 g4  g4-7  d4  b4-7  e4-min a4-7  d4 d4-7  
}







\score {
{
<
\context ChordNames\AkordyTrubka
\trubka 
>
<
\context ChordNames\accompaniment
 \addlyrics
\melody
            \context Lyrics \text
>
<
\context ChordNames \AkordyRefren
          \addlyrics
\PrvniHlas
            \context Lyrics \refren
\DruhyHlas
>
}

        \midi  { \tempo 4 =150; }
        \paper { linewidth = 18.0\cm; }
}

