\version "2.20.0"
\header {
        title = "Brigádnický pochod" 
        composer = "E. Székely" 
	poet = "I. Raics" 
}

melody =  \relative c' {        
\time 4/4 \key e \major
b4 b b'b | fis8 gis a b gis e4. | fis8 gis a gis fis e4. |
b2 b4 r | b4 b b' b | fis8 gis a b gis e4. | fis8 gis a b gis fis4.
e2 e4 r 
\repeat volta 2 {
<e' cis>2 <cis a>4 q | << {gis4 a gis2} {b4. cis8 b2 } >> |
b4 gis8 a b4 gis8 fis | e4. cis8 b4 r | b b b' b |
fis8 gis a b gis e4. | 
<e' cis>4 <cis a> <b gis> <gis e> | <b b>8 <cis a> <dis fis,> <e e,>2 
}
        \bar "|." 
}

text = \lyricmode {
Le -- tí pí -- seň s~kří -- dly vě -- tru le -- tí,
s~kří -- dly vě -- tru le -- tí,
pá -- dí. Je -- de, je -- de, je -- de do vsi na -- ší na bri -- gá --
du svě -- ží mlá -- dí. Slyš, pi -- la pí -- seň hrá, stroj hu -- čí, zpěv
na -- ší prá -- ce zní.
Pil -- né ru -- ce bu -- du -- jí a zdo -- bí ži -- vot no -- vý pra -- cí li -- du hřmí.
}

accompaniment =\chordmode {
e1 b2:7	e b:7 e b1:7 e b2:7 e b1:7 e
a e e fis2:7 b:7 e1 b2:7 e a e b:7 e
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
