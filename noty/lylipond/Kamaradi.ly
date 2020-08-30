\version "2.20.0"
\header {
        title = "Kamarádi"  
}

melody = \relative c' {        
\time 4/4 \key f \major
\partial 4 
c8 f | a4 a r c,8 f | a4 a r c,8 f |
a4 a bes a | g2 r4 g8 f | e4 c r g'8 f |
e4 c r g'8 f | e4 c bes' a \bar "||" 
\time 2/4 
g8 c, f g | a4 a | r8 a g f | a4 a | r8 c, f g |
a4 a | a bes8. a16 | a2 | g8 r bes8. c16 |
d4 d | e d | f2 | c4 a8 bes | a4 g | a bes |
c2 | r4 bes8. c16 | d4 d | e d |
f2 c4 a8 bes | a4 g | bes a | f2 | r
        \bar "|." 
}

text = \lyricmode {
Ka -- ma -- rá -- di, je to mlá -- dí,
kte -- ré mus dnes pa -- tří svět, vzduch se či -- stí, již fa -- šis
-- ti ne -- bu -- dou nám po -- rou -- čet. Je ko -- nec bí -- dy, je
ko -- nec hla -- du, je ko -- nec zlo -- děj -- ských svě -- ta -- řá
-- dů, ka -- ma -- rá -- di je to mlá -- dí, kte -- ré -- mu dnes pa
-- tří svět, ka -- ma -- rá -- di je to mlá -- dí, kte -- ré -- mu dnes pa
-- tří svět.
}

accompaniment =\chordmode {
s4 | f1 | f1 | f1 |
g2:m s4 c2.:7 s4 g:m |
c2:7 s4 g:m | c2:7 g4:m f8 c:7 |
c2:7 f1 f f c:7 g2:m | f2:dim | f2. c4:dim |
c1:7 | f4. f8:7 | s4 g:m | bes2 f:dim |
f c:dim | c1:7 f2
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
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}
