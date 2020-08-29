\version "2.20.0"
\header {
        title = "Nadešel čas" 
        composer = "Ludvík Podéšť" 
	poet = "Stanislav Kostka Neuman" 
}

melody =  \relative c' {        
\time 4/4 \key c \major
c4 c8 e g8. a16 g8 fis | g2 e4 r | d4 e8 f e4 d |
e4 r r2 | c4 c8 e g8. a16 g8 fis | g2 a4 r |
b8 b  r c d4 a | g4 r r2 | c4  c8 c g4 gis |
a8 a a a r2 | d4 d8 d a ais4. | b4 r r2 |
c,4 c8 e g8. a16 g8 fis | g2 e'4 r | d4 c8 a b4 d | c4 r r2 |
        \bar "|." 
}

text = \lyricmode {
Na --  de -- šel čas, kdy tře -- ba ří -- ci, čí že je ta -- to zem.
Na -- de -- šel čas, teď prù -- ko -- pní -- ci ži -- vot si ro -- hod
-- dnem.
Jde o bu -- dou -- cnost re -- pu -- bli -- ky, o ště -- stí jde nám
všem.
Na -- de -- šel čas. Teď roz -- zvra -- tní -- ky jak ško -- dnou vy
-- že -- nem.
}

accompaniment =\chordmode {
c1 | c | d2:m g:7 |
c1 c1. a2:m |
g d:7 g1 c2 c:7 f1 d2 d:7 g g:7 
c1. a2:7 d:7 g:7 c4
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
