\version "2.20.0"
\header {
        title = "Naše země je dnes krásná" 
        composer = "František Šauer" 
	poet = "Jaromír Hořec" 
}

melody =  \relative c'' { 
\clef treble       
\time 4/4 
\key f \major 

a4 d8. c16 a4 f8. g16 | a4 a a2 |
g4 bes8. a16 g4 f | g2 c,4 r |
f4 e8. f16 a4 gis8. a16 |
d4 c b2 | b8. b16 a8 b ais4 b | e2. a,8. gis16 |
\key d \major  a4 fis e d | fis4 fis2 a8 b | d8. d16 d8 b a8. a16 a8
fis | e4 r r b'8. ais16 | b4 g fis e | b'4 b r cis8 d | e8. e16 e8 c
a8. a16 a8 g | fis2. d'8. cis16 | d4 d, cis d | cis'2 b4 a8 b |
a4 g g d | fis r r fis8. f16 | e4 g b cis | d2 a4 d | e4. e8 d4 cis |
d2. r4 
        \bar "|." 
}

text = \lyricmode {
Dnes v~zem -- mi mé na -- vždy zna -- me -- ná,
že zít -- ra je už vče -- ra. Zní v~prá -- ci nám pí -- seň 
ví -- tě -- zná mlá -- dne o -- pět ze -- mě má!
Na -- še ze -- mě je dnes krá -- sná, a -- le zí -- tra bu -- de ješ -- tě
krá -- sněj -- ší, bu -- de bo -- ha -- tá a šťas -- tná, na -- vždy
za -- hna -- li jsme bí -- du vče -- rej -- ší.
Vše -- chny sí -- ly své -- ho mlá -- dí, i svùj mla -- dý smě -- lý sen 
dá -- me dra -- hé vlas -- ti rá -- di, ať vzkvé -- tá kaž -- dý den!
}

accompaniment =\chordmode {
d1:m d2.:m a4:min g2:min c1 c2:7 d1:m d2:m d2:m6 e1
a2.:7 d4 d1 d d2 fis:m c a:7 a1:7 g2:6 a1.:7 d2. f4:m g1
g2 b:7 e:m g:m d e:7 a1:7 d g2 d4 a:7 d2. a4

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


