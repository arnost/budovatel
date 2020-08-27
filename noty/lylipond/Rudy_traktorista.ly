\version "2.20.0"
\header {
        title = "Rudý traktorista" 
        composer = "E. F. Burian" 
	poet = "E. F. Burian" 
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major 
\repeat volta 2 {d4 f d f | e2 r | d4 f d f | e4 r r2 |
d4 f d f | g2 bes | }
\alternative {{a4 g f e | d r r2 }  
{a'4 a b cis |}}
d1 | f | e2 d | 
g,4 a bes r | r bes c d | e1 | d2 c |
f,4 g a2 | r4 a bes c | d1 | c2 bes | 
e,4 f g2 | r2 bes | a2 a | b4 a b cis | 
d4 r r2 | r1 
        \bar "|." 
}

text = \lyricmode {
Rá -- no do po -- lí ces -- ta pod ko -- ly
bě -- ží až to prá -- ší přes ho -- ry do -- ly.
jak žá -- dná ji -- ná. Zpí -- va -- jí
skři -- va -- ni a  trak -- tor tím rych -- lej 
u -- há -- ní a ran -- ní slu -- níč -- ko z~o -- bla -- ků
se di -- ví to -- mu zá -- zra -- ku.
}

text_ii = \lyricmode {
Na -- še ma -- ši -- na, pa -- ne, ta to zná,
ta po -- ly -- ká lá -- ny
}

accompaniment =\chordmode {
\repeat volta 2 {d1:m a:7 d:m a:7
d:m g:m}
\alternative{{ a:7 d:m}
{a:7}} d:m bes a2:7 d:m
g1:m g:m c c 
d:m d:m bes bes a:7
a:7 a:7 a:7 d:m
		}

\score {
         <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \text_ii
       >>
        \midi  { \tempo 4 =200  }
        \layout { linewidth = 18.0\cm  }
}

