\header {
        title = "Mlynáø mele";
        composer = "Jaromír Pode¹va";
	poet = "Karel Tachovský";
}

melody = \notes \relative c' {        
\time 2/4;\key f \major;
\repeat volta 2 {c8 f a f | c f a f | g g16 () a g8 f |
c c <c' a> <g bes> | c, f a f | c f a f |
 g g16 () a g8 f | c c <c' a> <g bes> |
a a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | f r }

c8 f a f | c f a f | g g16 () a g8 f |
c c <c' a> <g bes> | c, f a f | c f a f |
 g g16 () a g8 f | c c <c' a> <g bes> |
a a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | a r
a8 a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | f r

        \bar "|.";
}

text = \lyrics {
Mly -- náø me -- le, a¾ se tøe -- se, 
vo -- dìn -- ka mu ¹tìs -- tí ne -- se.
Jed -- ním be -- re, dru -- hým dá -- vá,
Pán Bùh mu to po -- ¾eh -- ná -- vá,
jed -- ním be -- re, dru -- hým dá -- vá,
Pán Bùh mu to po -- ¾eh -- ná -- vá.

Za lí -- mec jsme je v¹ak chyt -- li,
teï jsou o -- ba v~jed -- nom pyt -- li,
v~dru¾ -- stvu po -- le od -- dì -- lá -- me,
sa -- mi si to po -- ¾eh -- ná me,
v~dru¾ -- stvu po -- le od -- dì -- lá -- me,
sa -- mi si to po -- ¾eh -- ná me,
v~dru¾ -- stvu po -- le od -- dì -- lá -- me,
sa -- mi si to po -- ¾eh -- ná me.


}

accompaniment =\chords {
f1 g2:7 c:7 f1 g2:7 c:7 d4:7 g:min
c:7 f bes f8 bes f4 c:7 f2
f1 g2:7 c:7 f1 g2:7 c:7 d4:7 g:min c:7 f
bes f8 bes f4 bes d2:7 g4  bes:min c f bes f8 bes
f4 c:7 f2
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
                               \midi  { \tempo 4=160;}
                               \paper { linewidth = 20.0\cm; }
                       }


