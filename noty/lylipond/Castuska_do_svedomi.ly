\version "2.20.0"
\header {
        title = "Častuška do svědomí"
        composer = "Ludvík Podéšť"
	poet = "Vlastimil Pantùček"
}

melody =  \relative c'' { 
\clef treble        
\time 3/4
\key d \major
\repeat volta 2  {a4 d a | b a fis| a g g | a g g | a d a | b a fis| a e g | g
fis fis | g a b ~ |  b d b | a fis2 | g4 a b ~ |  b d b | a fis2 |
e4. fis8 g4 | g a b | a r r | r2. | cis4 a b | a e g | fis r r | 
g8 a g4 g8 a | b4 b8 cis d4 | a8 b a b fis r | d4 fis a |
g8 a g4 g8 a | b4 b8 cis d4 | a8 b a g fis r | b,4 dis fis | e8 dis e
fis g a | e8 dis e fis g a | a gis a b cis d | a gis a b cis e |
<d fis,>4 fis, <g e> | <a fis> <b g> <cis a> |}
\alternative {{<d fis,>4 r r| r2. }{<d fis, >2. ~ | < d fis, >| r2. | r }}
        \bar "|."
}

text = \lyricmode {

Mi -- lí sou -- dru -- zi a roz -- mi lé sou -- druž -- ky,
je to dři --na, po -- řád vy -- mýš -- let Čas -- tuš -- ky!
Ko -- mu snad ješ -- tě sta -- čí 
svùj ži -- vot pro -- laj -- da -- čit,
tak to -- mu na jis -- to my 
sáh -- ne -- me do svě -- do -- mí.
la la la, la la la, la la la, la la la la la,
la la la, la la la, la la la, la la la,
la la la la la, la la la, la la la la la la,
la la la la la la, la la la la la la, la la la la la la, 
sá -- hne -- me do svě -- do -- mí
žít!
}

accompaniment =\chordmode {
d1. a2.:7 d1. d2. a:7 d g1. d2. g1.
b2.:7 e1.:m a:7 d2. c:7 d
g1. d g b:7 e:m a:7 
d2. a:7 d1. d
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
       \midi  { \tempo 4=180}
       \layout { linewidth = 20.0\cm }
}


