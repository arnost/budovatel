\version "2.20.0"
\header {
        title = "Milion paží" 
        composer = "" 
	poet = "" 
}

melody =  \relative c' {
\clef treble        
\time 4/4 \key f \major \partial 2 
r8 c f a | c4 c c c | c a r8 f f g |
a4 c a g | f2 r8 c f a | c4 c c c |
c a r8 c c d | e4. c8 b4. c8 | a2 r8 a g a |
bes r r bes bes4 bes | bes4 bes r8 c c c |
c4. c8 c r r c | c4 r r8 c d e |
f4 a, a c | c f, r8 a g f | f r r f f r r a |
c4 r r c, | f f f a | f2 c4 r8 c | a'4 a a c |
a2 f4 r | c' a8 f c'4 a8. f16 | g4 r r r8 c, |
g'4. fis8 g8 fis g a16 a | f2 c4 r8 c |
g'4. fis8 g  fis g a | f2 c'4 r8 c, |
f r r f a r r a | c4 r r2 | f c4 a |
g2 f8 r r c | f r r f a r r a | c4 r r2 |
f2 c4 a | g2 f4 r |

        \bar "|." 
}

text = \lyricmode {

Mi -- li -- on pa -- ží v~tmách se vzpja -- lo, 
čer -- ve -- ný ko -- hout v~stře -- chy vlít! 
Oč ti -- síc let nás o -- krá -- da -- lo, 
my jde -- me so -- bě na zpět vzít.
A v~ces -- tu sviť, kr -- va -- vé ne -- be! 
Kdo tr -- píš, k~nám se dej ha hoj!
A o -- hřát pojď se, ko -- ho ze -- be,
svět ho -- ří v~tmách! Nuž v~boj! Nuž v~boj!

Hoj, dru -- zi v~kra -- ji, v~mě -- stě, 
svou bí -- du v~pla -- men vne -- ste!
čim kdo's byl rab, vše -- cko spal.
Pryč s~ka -- pi -- tá -- lem bur -- žo -- a -- si -- í,
pryč s~o -- tro -- ctvím a ty -- ra -- ni -- í!
A v~boj, a v~boj, a v~boj.
Za Sov -- de -- pi -- i!
A v~boj, a v~boj, a v~boj.
Za Sov -- de -- pi -- i!

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
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}
