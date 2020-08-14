\version "2.20.0"
\header {
        title = "Jací jsou ti češi"
        composer = "Jan Tausinger"
	poet = "Miloš Povondra"
}

melody =  \relative c' { \clef treble         
\time 2/4
\key a \major
\repeat volta 2{
e8 a4. | b4 d | cis a | e8 a4. | b4 d |
cis8 e4. | d8 d cis b | a8 e4. | d'8 d cis e |
a,8 ( cis ) e4 | fis e | d8 cis b4 | a2 |
 <b d>8 <b d> <a cis> <gis b> | a8 e4. |  <b' d>8 <b d> <a cis> <gis b> 
a ( < g a cis> ) <fis ais e'>4 | <b, d b' fis'> <cis a' e'> | 
<d fis d'>8 <dis fis cis'> <e gis b>4 | a2 |
}
e8 <cis e a>4. | <e gis b>4 <e gis d>|  <e a cis> a | 
e8 a4. | b4 d |
cis8 e4. | d8 d cis b | a8 e4. | d'8 d cis e |
a,8 ( cis ) e4 | fis e | d8 cis b4 | a2 |
<b d>8 <b d> <a cis> <gis b> | a4 e |  <b' d>8 <b d> <a cis> <gis b> |
a ( < g a cis> ) <fis ais e'>4 | <b, d b' fis'> <cis a' e'> | 
<d fis d'>8 <dis a' b fis'> <e b' d gis>4 | <a  cis  e  a  >2 ~ |
<a cis e a >8 r r4 
}

text = \lyricmode {
Ja -- cí jsou ti če -- ši, ja -- cí jsou to li -- dé, kdy -- bys vše
-- chny po -- bil, vždy -- cky je -- den zbu -- de, vždy -- cky je --
den zbu -- de.
Kdy -- bys vše -- chny po -- bil, vždy -- cky je -- den zbu -- de, vždy -- cky je --
den zbu -- de.
Že už ne -- ní bí -- da, že nám slun -- ce sví -- tí, ne -- choď -- te
k~nám pá -- ni, bu -- de -- te tu bi -- ti, bu -- de -- te tu bi --
ti!
Ne -- choď -- te k~nám pá -- ni, bu -- de -- te tu bi -- ti, bu -- de
-- te tu bi -- ti!~
}

accompaniment =\chordmode {
a2. e4:7 a1 e2:7 a d4 a:7 a2 d4 e:7 a fis:7 b:m a:6 d8 b:7 e4:7 a2
e a e a4:7 fis:7 b:m a b8:m b:7 e4:7 a2
a2 e a a e:7 a d4 e:7 a2 d4 e:7 a fis:7 b:m a:6 d8 b:7 e4:7 a2
e2 a e a4:7 fis:7 b:m a b8:m b:7 e4:7 a2
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
       \midi  { \tempo 4=170}
       \layout { linewidth = 20.0\cm }
}


