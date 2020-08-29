\version "2.20.0"
\header {
        title = "Zpátky ni krok" 
        composer = "J. Stanislav" 
	poet = "O. Rambousková-Nejedlý " 
}

melody =  \relative c'' {        
\time 4/4 \key d \major 
\partial 4 
a,4 fis'4. e8 d4 e8 g | fis4. e8 d4 fis8 fis | b4 b fis g |
a4 r r fis8 fis | b4 b a gis | cis4. a8 fis4 cis'8 cis | b4 b a gis |
fis4 r r a | d4. fis,8 fis4 d' | cis4. a8 fis4 cis' | b4. d,8 d4 b' |
a4 r r a | b b cis cis | <cis e>4. <b d>8 q4 q | <g e>2 <a a>4 q | 
| < fis d' >4 r r2 ||
        \bar "|." 
}

text = \lyricmode {
Pojď, ná -- ro -- de, věr -- ný ná -- ro -- de, s~pre -- si -- den -- tem Gott -- wal -- dem
on nás ve -- de stá -- le výš a výš sku -- te -- čnost už ne -- ní snem. Kdos
ví -- tě -- zně s~ním bo -- jo -- val mu stůj po bo -- ku bok.
Již vzhů -- ru, vzhů -- ru sou -- dru -- zi a zpát -- ky ni krok.
}

accompaniment =\chordmode {
r4 d2. a4:7 d2  d2 b2:m g2
d2 d2 b2:m cis2 fis2:m fis2:m b2:m cis2:7
fis2:m a2:7 d2 d2 fis2:m fis2:m g2 g2 
d2 d2 g2 fis2:7 b2:m b2:m e2:m a2:7 d2
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
       \midi  { \tempo 4=150}
       \layout { linewidth = 20.0\cm }
}
