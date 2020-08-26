\version "2.20.0"
\header {
        title = "Za hvězdou jitřní" 
        composer = "Leopold Knebelsberger" 
	poet = "Bremer Lehrer, Heinrich Eildermann" 
}

melody = \relative c' {
        \clef treble
        \time 4/4 \key g \major
	\partial 4 
d4 | g4. fis8 g4 a | g ( fis ) e d | g4. fis8 g4 a |
d2 r4 d4 | a4. gis8 a4 b | c4.( b8 ) a4 g | fis d d'4.a8 | 
g2 r4 b,4 | e4. g8 fis4 e | dis b' b, b' | c4. b8 a g fis e |
b'2 r4 d, | b' b c4. b8 | a2 e4 e | d4. g8 a4. bes8 | b2 r4 d,4 |
b'4. b8 c4. b8 | a4 ( e' ) c a | <g d'>4.  <d  d'>8  <b' d>4. < a c>8 | <g b>2 
        \bar "|." 
}

text = \lyricmode {
Za hvě -- zdou jitř -- ní pojďme v~před sou -- dru -- zi 
v~ši -- chni v~ráz. Pak zví -- tě -- zí -- me všude hned, 
ne -- přá -- tel pa -- dne hráz. Jen ku -- pře -- du krok 
vy -- ří -- dit! Děl -- ní -- ci mla -- dí chce -- te jít? 
My jsme mla -- dá gar -- da, mla -- dý pro -- le -- ta -- ri -- át.
My jsme mla -- dá gar -- da, mla -- dý pro -- le -- ta -- ri -- át.
}

nemecky = \lyricmode {
Dem Mor -- gen -- rot ent -- ge -- gen, 
Ihr Kampf -- ge -- no -- ssen
all! Blad siegt ihr al -- ler we -- gen, 
bald weicht der Fein -- de Wall!
Mit Macht her -- an und hal -- ten! Schritt 
Ar -- bei -- ter -- ju -- gend? Will sie mit? 
Wir sind die jun -- ge Gar -- de des Pro -- le -- ta -- ri -- ats,
Wir sind die jun -- ge Gar -- de des Pro -- le -- ta -- ri -- ats,
}

accompaniment =\chordmode {
r4 g1 d g d a:m a:m
d g e:m b a:m b:7
g a:m d g g a:m 
g2 d:7 g2.
		}

\score {
        <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \nemecky
       >>
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

