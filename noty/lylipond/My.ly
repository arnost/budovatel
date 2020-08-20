\version "2.20.0"
\header {
        title = "My" 
        composer = "Václav Dobiáš" 
	poet = "F. Halas" 
}

melody =  \relative c'' { 
\clef treble
\time 4/4 \key es \major 
c4 c bes g | c c bes g | d'8 c bes as bes4 g | c r4 r2|
c4 c bes g | c c bes g | d'8 c bes as bes4 g | c r4 r8 g g g \bar "||" 
\key c \major 
a4 a g g | a2 r8 g g g a4 a c c | a r r8 c c c |
d4 d c  c | d2 r8 c c c | d4 d e e |  c r r2 | 
r2 r8 g g g | a4 a g g |
a4 r4 r8 g g g | a4 a c c | a r r8 c c c |
d4 d c c | d2 r8 c c c | d4 d e e c r8 r2 
        \bar "|." 
}

text = \lyricmode {

Bu -- dou -- ctnost nám ne -- u -- ste -- le, my si sa -- mi u -- ste
-- lem,
roz -- dr -- tí -- me ne -- pří -- te -- le po hu -- sit -- sku, po na
-- šem. 
Z~nás ni -- kdo už se ne -- po -- dá náš po -- vel k~bo -- ji  Svo --
bo -- da!
Z~nás ni -- kdo už se ne -- po -- dá náš po -- vel k~bo -- ji  Svo --
bo -- da!
Z~nás ni -- kdo už se ne -- po -- dá náš po -- vel k~bo -- ji  Svo --
bo -- da!
Z~nás ni -- kdo už se ne -- po -- dá náš po -- vel k~bo -- ji  Svo --
bo -- da!
}

accompaniment =\chordmode {
c2:m g4:m c:m | c2:m g4:m c:m | g1:m | c:m |
c2:m g2:m | c2:m g4:m c:m | g1:m | c |
c | c | c | d:m | d:m | d:m | d2:m g | c1 |
c | c | c | c | d:m | d:m | d:m |d2:m g | c1 |
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
