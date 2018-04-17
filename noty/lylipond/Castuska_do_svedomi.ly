\header {
        title = "èastu¹ka do svìdomí";
        composer = "Ludvík Podé¹»";
	poet = "Vlastimil Pantùèek";
}

melody = \notes \relative c'' {        
\time 3/4;\key d \major;
\repeat volta 2  {a4 d a | b a fis| a g g | a g g | a d a | b a fis| a e g | g
fis fis | g a b ( | ) b d b | a fis2 | g4 a b ( | ) b d b | a fis2 |
e4. fis8 g4 | g a b | a r r | r2. | cis4 a b | a e g | fis r r | 
g8 a g4 g8 a | b4 b8 cis d4 | a8 b a b fis r | d4 fis a |
g8 a g4 g8 a | b4 b8 cis d4 | a8 b a g fis r | b,4 dis fis | e8 dis e
fis g a | e8 dis e fis g a | a gis a b cis d | a gis a b cis e |
<d4 fis,4> fis, <g e> | <a fis> <b g> <cis a> |}
\alternative {{<d fis,> r r| r2. }{<d2.( fis, (> | <) d )fis, >| r2. | r }}
        \bar "|.";
}

text = \lyrics {

Mi -- lí sou -- dru -- zi a roz -- mi lé sou -- dru¾ -- ky,
je to døi --na, po -- øád vy -- mý¹ -- let èas -- tu¹ -- ky!
Ko -- mu snad je¹ -- tì sta -- èí 
svùj ¾i -- vot pro -- laj -- da -- èit,
tak to -- mu na jis -- to my 
sáh -- ne -- me do svì -- do -- mí.
la la la, la la la, la la la, la la la la la,
la la la, la la la, la la la, la la la,
la la la la la, la la la, la la la la la la,
la la la la la la, la la la la la la, la la la la la la, 
sá -- hne -- me do svì -- do -- mí
¾ít!
}

accompaniment =\chords {
d1. a2.:7 d1. d2. a:7 d g1. d2. g1.
b2.:7 e1.:min a:7 d2. c:7 d
g1. d g b:7 e:min a:7 
d2. a:7 d1. d
		}

                       \score {
                               \simultaneous {
                       %         \accompaniment
                                 \context ChordNames \accompaniment

                                 \addlyrics
                                   \context Staff = mel {
                                     \property Staff.noAutoBeaming = ##t
                                     \property Staff.automaticMelismata = ##t
                                     \melody
                                   }
                                   \context Lyrics \text
                               }
                               \midi  { \tempo 4=180;}
                               \paper { linewidth = 20.0\cm; }
                       }


