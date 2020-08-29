\version "2.20.0"
\header {
        title = "Píseň frontového šoféra" 
        composer = "B. Mokrousov" 
	poet = "B. Laskin, N. Labkovskij" 
}

melody =  \relative c' {
\clef treble        
\time 4/4 \key c \major 
e8 a c a b e, gis b | a2 e |
c8 e g e f e f e | e1 |
g8 a c d c b4. | c,8 e a b a gis4. |
e8 fis g e b' a g a | e2. fis8 gis |
a4 e2 b'8 c| a4 e2 c8 e | g4 fis8 g a4 g8 d |
f4 e2 f8 e | d4 a'2 f8 d | e4 a2 c,8 d |
e4 f8 d c4 d8 b | a2. f'8 e | d4 a'2 f8 d |
e4 a2 c,8 d | e4 f8 d c4 d8 b | < a a'>2. r4 |
        \bar "|." 
}

text = \lyricmode {
Přes ře -- ky, ho -- ra -- mi do -- li -- na mi,
oh -- něm, bou -- ří, po -- lem mi -- no -- vým,
ve -- dli jsme své stro -- je v~no -- vé tu -- hé bo -- je,
stá -- le dál, vstříc ces -- tám fron -- to -- vým. 
Fronto -- vá ces -- ta do da -- le -- ka deš -- těm bomb srd -- ce nám
ne -- po -- le -- ká. Na smrt ne -- ní po -- myš -- le -- ní, do -- ma
nás no -- vá prá -- ce če -- ká. Na smrt ne -- ní po -- myš -- le -- ní, do -- ma
nás no -- vá prá -- ce če -- ká. 
}

accompaniment =\chordmode {
a2:m e:7 | a1:m |
c2 g       | c1     |
a2:m e   | a2:m e |
a4:m e:m b2:7 | e1|
a2:m e | a1:m | c2 g:7 |
c2. a4:7 | d1:m | a1.:m 
e2 | a1:m | d:m | a1.:m e2 |
a2.:m
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
