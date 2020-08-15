\version "2.20.0"
\header {
        title = "Mlynář mele"
        composer = "Jaromír Podešva"
	poet = "Karel Tachovský"
}

melody =  \relative c' {        
\clef treble 
\time 2/4
\key f \major
\repeat volta 2 {c8 f a f | c f a f | g g16 ( a ) g8 f |
c c <c' a> <g bes> | c, f a f | c f a f |
 g g16 ( a ) g8 f | c c <c' a> <g bes> |
a a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | f r }

c8 f a f | c f a f | g g16 ( a ) g8 f |
c c <c' a> <g bes> | c, f a f | c f a f |
 g g16 ( a ) g8 f | c c <c' a> <g bes> |
a a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | a r
a8 a bes g | e c a' f | d <d' bes> <a c> < g bes > |
a f g4 | f r

        \bar "|."
}

text = \lyricmode {
Mly -- nář me -- le, až se tře -- se, 
vo -- děn -- ka mu štěs -- tí ne -- se.
Jed -- ním be -- re, dru -- hým dá -- vá,
Pán Bùh mu to po -- žeh -- ná -- vá,
jed -- ním be -- re, dru -- hým dá -- vá,
Pán Bùh mu to po -- žeh -- ná -- vá.

Za lí -- mec jsme je však chyt -- li,
teď jsou o -- ba v~jed -- nom pyt -- li,
v~druž -- stvu po -- le ob -- dě -- lá -- me,
sa -- mi si to po -- žeh -- ná me,
v~druž -- stvu po -- le ob -- dě -- lá -- me,
sa -- mi si to po -- žeh -- ná me,
v~druž -- stvu po -- le ob -- dě -- lá -- me,
sa -- mi si to po -- žeh -- ná me.


}

accompaniment =\chordmode {
f1 g2:7 c:7 f1 g2:7 c:7 d4:7 g:m
c:7 f bes f8 bes f4 c:7 f2
f1 g2:7 c:7 f1 g2:7 c:7 d4:7 g:m c:7 f
bes f8 bes f4 bes d2:7 g4  bes:m c f bes f8 bes
f4 c:7 f2
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
       \midi  { \tempo 4=160}
       \layout { linewidth = 20.0\cm }
}


