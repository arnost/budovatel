\version "2.20.0"
\header {
        title = "Píseň kosmonautů"
        composer = "M. Blantěr"
	poet = "J. Fuchs"
}

melody =  \relative c'' {
\clef treble
\time 4/4 
\key f \major
\partial 4 a8. gis16 | a4 c,8. b16 c4 a'8. gis16 | a4 c2 f8. e16 | d4
a8. gis16 a4 e'8. e16 | c2. c8. c16 | c4 bes8. bes16 [ a8 ( bes ) ]
c8. bes16 | bes4 a2 a8. a16 | a4 g8. g16 [ fis8 ( g ) ] a8. a16 |
c2. c,8. c16 | c4 f8. a16 c4 f8. e16 | e4 d2 a8. gis16 | a4 c,8. b16
c4 g'8. e16 | f2. c8. c16 | c4 f8. a16 c4 f8. e16 | e4 d2 a8. gis16 | 
a4 c,8. b16 c4 g'8. c16 \partial 2. f2.
}

text = \lyricmode {
Ko -- smo -- naut z~mo -- dra -- vé výš -- ky vi -- dí krás -- ný
svět, jak si jej vi -- dět přál. Jak jej dřív ne -- spa -- třil ni --
kdo z~li -- dí, jak jej dřív ni -- kdo z~nás ne -- po -- znal. So --
vět -- ský kos -- mo -- naut k~hvě -- zdám le -- tí, po -- zdra -- ví
na ne -- bi Vel -- ký vůz. Pro ži -- vot, pro šťas -- tný ú -- směv dě --
tí spa -- tří Zem a na ni rod -- nou Rus.
}





accompaniment =\chordmode {
c4:7 f2. c4:7 f2. a4:7 d2.:m g4:7 c1
bes2:6 b:m7 f1:6.4 g:7 c2. c4:7
f2. a4:7 a2. g4:7 f2.:6.4 c4:7 f2. c4:7
f2. a4:7 bes2. g4 f2.:6.4 c4:7 f2.
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
       \midi  { \tempo 4=120}
       \layout { linewidth = 20.0\cm }
}


