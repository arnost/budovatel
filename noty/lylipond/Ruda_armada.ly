\version "2.20.0"
\header {
        title = "Rudá armáda" 
        composer = "" 
	poet = "" 
}

melody =  \relative c' {
        \time 2/4 \key as \major
as'4 as8. as16 | as4 g8. f16 | e4 f8. g16 | f2 |
f4 es8. des16 | c4 f8. g16 | as4 g | f r |
as4 as8. as16 | as4 g8. f16 | es4 f8. g16 | f2 |
f4 es8 des | c4 f8. g16 | as4 g | f8 f e f |
\repeat volta 2 {
	g8 g g4 | r8 g f g | as4 as | r8 as g as |
	bes4 es, | es' des | c r | r8 c bes c |
	des4 g, | r8 g as bes | c4 f, | r8 as g f |
	c'4 bes | as g | f2 ( | } 
\alternative {{ f8 ) f e f }{ f4 r}} 
        \bar "|." }
	

text = \lyricmode {
Jde bí -- lá ar -- má -- da s~ná -- mi se bít,
pro ca -- ra trůn zno -- vu při  -- pra -- vit.
Leč z~taj -- gy až do bri -- tan -- ských mo -- ří
pěst Ru -- dé ar -- má -- dy ho -- vo -- ří. Ať Ru -- dá 
ar -- má -- da bo -- dá -- ky sví -- rá mo -- zol -- nou 
ru -- kou pro -- ti všem, če -- ka -- jí na nás 
roz -- hod -- né bo -- je, pod re -- vo -- luč -- ním
pra -- po -- rem. Ať Ru -- dá rem.
}

accompaniment =\chordmode {
f1:m c2:7 f:m
bes:m f:m c:7 f1.:m
c2:7 f:m bes:m f:m c:7 f:m
\repeat volta 2 {es1:7 as es:7 as
bes2:m c:7 f1:m c1.:7
}
\alternative{{f2:m}{f2:m}}
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

