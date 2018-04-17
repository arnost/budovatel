\header {
        title = "Mlyn�� mele";
        composer = "Jarom�r Pode�va";
	poet = "Karel Tachovsk�";
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
Mly -- n�� me -- le, a� se t�e -- se, 
vo -- d�n -- ka mu �t�s -- t� ne -- se.
Jed -- n�m be -- re, dru -- h�m d� -- v�,
P�n B�h mu to po -- �eh -- n� -- v�,
jed -- n�m be -- re, dru -- h�m d� -- v�,
P�n B�h mu to po -- �eh -- n� -- v�.

Za l� -- mec jsme je v�ak chyt -- li,
te� jsou o -- ba v~jed -- nom pyt -- li,
v~dru� -- stvu po -- le od -- d� -- l� -- me,
sa -- mi si to po -- �eh -- n� me,
v~dru� -- stvu po -- le od -- d� -- l� -- me,
sa -- mi si to po -- �eh -- n� me,
v~dru� -- stvu po -- le od -- d� -- l� -- me,
sa -- mi si to po -- �eh -- n� me.


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


