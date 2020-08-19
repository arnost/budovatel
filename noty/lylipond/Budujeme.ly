\version "2.20.0"
\header {
   title = "Budujeme" 
   composer = "Václav Dobiaš" 
   poet = "František Halas" 
         }

   melody =  \relative c' {
            \time 4/4 
           \key g \major 
r2 r4 d8. d16 | 
\repeat volta 2 {
g4 g d d | e e2 r4 |
fis8. g16 fis8 e fis4 fis | b2 r4
            d,8. d16 | g4 g d d | e e2 r4 |
a8. b16 a8 g a4 a | d2 r | a4 d, d c'
            | b g g r | a d, d e' | d b b g | c
            g8. g16 c4 e | a, e8. e16 a4 b | 
d2 c4 a | g b8. b16 d8. d16 d4 | 
a4 d, d c' | b g g r |
a d, d e' | d b b g | c g8. g16 c4 e | 
a, e8. e16 a4 b | d2 c4 a |
}
\alternative { {  g4 r r d8. d16}
{ g2 r  }}
           
   }

text = \lyricmode {
Pro -- hra -- je to, kdo se vá -- lí,
re -- pu -- bli -- ka prá -- ce je.
To -- mu čest, kdo ne -- za -- há -- lí,
ten je je -- jí na -- dě -- je.
Vy -- hrň -- me si ru -- ká -- vy,
když se ko -- la za -- sta -- ví.
Hej rup! Ho -- la -- hej! A hej! 
Ho -- la -- hej! Do prá -- ce se dej!
la la la la la.
   Vy -- hrň -- me si ru -- ká -- vy,
když se ko -- la za -- sta -- ví.
Hej rup! Ho -- la -- hej! A hej! 
Ho -- la -- hej! Do prá -- ce se dej!

Ma -- kat dej!

   }

accompaniment =\chordmode {
s1 | g | e:m | b2. fis4:7 | b1 | g |e:m
|d2. a4:7 | d2 s4 a | d1:7 | g | d:7 | g |
c | a:m | d:7 | g | d:7 | g | d:7 | g | c |
a:m| d:7 | g | g |
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
           \midi  { \tempo 4=120 }
           \layout { linewidth = 20.0\cm  }
   }


