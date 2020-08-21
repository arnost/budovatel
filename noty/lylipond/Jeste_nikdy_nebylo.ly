\version "2.20.0"
\header {
   title = "Ještě nikdy nebylo..." 
   composer = "Pavel štěpán" 
         }

melody = \relative c' {
  \clef treble
        \time 2/4 
       \key d \major 
d8 cis d e | fis g a4 | g8 a b cis | d4 a |
d,8 cis d e | fis g a4 |  e8 d cis b | a4 a8 r |
d8 cis d e | fis g a4 | g8 a b cis | d4 a |
d,8 cis d e | fis g a4 | a8 g fis e | d4 d8 r |
<d' b >4 < d b  > | <b g>4. < cis a>8 | 
<d  b>< cis a >4 < b g>8 | < a fis >4 < a fis>4 | 
<fis d>4. <g e>8 | < a fis >4 < a fis>4 | 
<e cis> <e cis> | <e cis>4. <fis d>8 |
<g e><a fis>4 < b g>8 | <a fis>4 < fis d> |
<e cis>4. a,8 | d4 d |
       \bar "|." 
}

text = \lyricmode {
Ješ -- tě ni -- kdy ne -- by -- lo ze -- le --
no tak v~po -- li, ni -- kdy tak -- hle ve --
se -- lo, ni -- kdy po vů -- ko -- li.     
Je -- ště se nám ne -- ži -- lo pě -- kně 
tak a leh -- ko, je -- ště nám to o -- bi -- lí
tak -- hle ne -- za -- kve -- tlo.
Sví -- ti nám to slu -- néč -- ko, sví -- tí
nám teď ji -- nak. 
Hned je vi -- dět: po -- by -- lo v Kre -- mlu 
u~Sta -- li -- na.

}

accompaniment =\chordmode {
       d1 | g2 | d1. | e2:7 | a d1 g2 d1.
e4:m a:7 d4. r8
g1. d a2.. d8 e2:m a:4.6 a d
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
       \midi  { \tempo 4=120 }
       \layout { linewidth = 20.0\cm  }
}
