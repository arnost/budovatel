\version "2.19.44"
\header {
        title = "Armádě zdar"
        composer = "R. Drejsl"
        poet = "J. Hora"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 
        \key f \major
d4 f e f | d r4 r2 | g4 bes a bes | g4 r4 r2 | < f a >4 r4  < f a > 
<  d' f, >  | < e, c' >< bes' g ><  a f > < g e > |
< f a > f e d  | e r r2 |
\key d\major
\repeat volta 2 {
fis8 e4 d8 a'4 g | fis8. g16 a4 r b | d4 a g8 fis e4 |
d2 ~ d8 r8 r4 | fis8 e4 d8 a'4 g | fis8 g a4 r b | 
cis b8 a b4 a8 gis|  a2 ~ a4 r4 | b a g b | 
a fis r fis | e fis g fis | d2 ~ d4 r |
f8 e4 d8 b'4 r | fis e8 d b'4 r |
a d2 <  e a,>4
	
}
\alternative { { d4 r r2  }
	     { d4 r d r | r fis r2 }}
        \bar "|."
}

text = \lyricmode {
Pro -- ti vál -- ce mír, pro -- ti štva -- ní klid a pro -- ti všem, co vra -- ždí,
k~bo -- ji na -- stou -- pit. 
Vo -- já -- ci dej -- me vý -- stra -- hu, je sí -- la v~na -- šich zbra -- ních, ne -- pří -- tel
ztra -- tí od -- va -- hu jak za -- sle -- chne náš zpěv a smích.
Za -- že -- ne -- me vše -- chny, co my -- slí na po -- žár vo -- já -- ci vpřed za no -- vý
svět, ar -- má -- dě zdar! zdar, zdar, zdar.

}

harmonies =\chordmode {
d2:m a2:7 d2:m s g2:m d:7 g s  f2 f2 c:7 c:7
f e a4:7 s2.  d2 a d b:m d a:7
\repeat volta 2 {
d s d a d b:m a e:7 a2. s4
a2:7 a2:7 d d fis:7 fis:7 b:m b:m d b:m d b:m d4 g2 a4:7 
}
\alternative { { d4 s2.} { d4 s d s }}
		}

\score {
        <<
        \new ChordNames {
             \set chordChanges = ##t
              \harmonies
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \midi  { \tempo 4 =120 }
        \layout { linewidth = 18.0\cm }
}



