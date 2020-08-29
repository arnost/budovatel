\version "2.20.0"
\header {
        title = "Pohřební pochod ruských revolucionářů" 
        composer = "V. G. Archangelskij" 
	poet = "" 
}

melody =  \relative c' {        
\time 4/4 \key g \major
\partial 8 
e8 | b'4  a16 ( g )  fis (  e )  b'4  a16 ( g ) fis ( e )
fis4 fis8. fis16 fis4 r8 fis8 | a4 b8 c  b ( a ) g fis |
e ( g ) b ( g ) e4 r8 e | b'4 a16 ( g ) fis ( e ) b'4 a16 (
g ) fis ( e ) | fis4 fis8. fis16 fis4 r8 fis8 | a4 c8 a g4 fis8 fis |
e8 ( g ) b ( g ) e4 r8 b' | d4 d8. d16 d4 e8. e16 |
d4 c8. b16 c4 r8 d, | c'4 c8. c16 c4 d8. c16 |
c4 b8 ais b4 r8 e, | b'4 a16 ( g ) fis ( e ) b'4 a16 (g ) fis
( e ) | fis4 fis8. fis16 fis4 r8 fis8 | a4 a8 c8 b a g fis |
e g b g e4 r |
        \bar "|." 
}

text = \lyricmode {
Vy za o -- běť pad -- li jste v~kru -- tém bo -- ji, za o -- běť své
lás -- ky k~všem tr -- pí -- cím, 
vy stá -- li jste za ni -- mi du -- ší svo -- jí,
svou ctí, svo -- bo -- dou svo -- jí, ži -- tím svým.
Po lé -- ta  jste chřad -- li v~ža -- lá -- řích te -- mných, tam kat u --
ko -- val vás v~že -- le -- zech pev -- ných, tam pou -- ta vám řin -- če -- la
v~pří -- šer -- ný kout, tam vy -- řkli jste nad ty -- ra -- nem spra
-- ved -- li -- vý soud.
}

accompaniment =\chordmode {
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
        \midi  { \tempo 4 =100 }
        \layout { linewidth = 18.0\cm  }
}

