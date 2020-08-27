\version "2.20.0"
\header {
        title = "Údernická" 
        composer = "M. Barvík" 
	poet = "Dr. K. M. Walló" 
}

piskanii =  \relative c''{
\repeat volta 2 {
 fis8. g16   a8 g  | fis-. e-.  fis-. e-. |
 fis8.-. g16-.   a8-. g-.  fis4 e 
 fis8. g16   a8-. g-.  | fis-. e-.  fis-. e-. |
 fis8.-. g16-.   a8-. g-.  fis4 e |}
<d a fis>4 r
}

piskaniii =  \relative c''{
\repeat volta 2 {
 d8. e16   fis8 e | dis-. cis-.  dis-. a-. |
 d8.-. e16-.   fis8-. e-. | dis4 a |
 d8. e16   fis8-. e-. | dis-. cis-.  dis-. a-. |
 d8.-. e16-.   fis8-. e-. | dis4 a |}
}

melody =  \relative c' {
         \time 2/4 \key c\major 
d4 d8 d | a'4 a | g a | b g  |
a4 e8 e | a4 a | b c | a r |
d4 d8 c | b4 a | b g | g g | 
a4 d,8 d | a'4 a | b cis | a r |
\key g\major 
 <<\piskanii \piskaniii>>
        \bar "|." 
}

text = \lyricmode {
Sou -- dru -- zi vzhů -- ru do ú -- to -- ku!
Ať kaž -- dý do -- bře za -- mí -- ří,
ú -- ko -- ly prv -- ních pě -- ti ro -- ků,
my chce -- me spl -- nit za čty -- ři.
}

accompaniment =\chordmode {
d1 g 
a:m e2:7 a:m
d1 g 
d e2:7 a 
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
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

