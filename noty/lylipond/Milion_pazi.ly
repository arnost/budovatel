\header {
        title = "Milion pa��";
        composer = "";
	poet = "";
}

melody = \notes \relative c' {        
\time 4/4;\key f;\partial 2;
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

        \bar "|.";
}

text = \lyrics {

Mi -- li -- on pa -- �� v~tm�ch se vzpja -- lo, 
�er -- ve -- n� ko -- hout v~st�e -- chy vl�t! 
O� ti -- s�c let n�s o -- kr� -- da -- lo, 
my jde -- me so -- b� na zp�t vz�t.
A v~ces -- tu svi�, kr -- va -- v� ne -- be! 
Kdo tr -- p�, k~n�m se dej ha hoj!
A o -- h��t poj� se, ko -- ho ze -- be,
sv�t ho -- �� v~tm�ch! Nu� v~boj! Nu� v~boj!

Hoj, dru -- zi v~kra -- ji, v~m� -- st�, 
svou b� -- du v~pla -- men vne -- ste!
�im kdo's byl rab, v�e -- cko spal.
Pry� s~ka -- pi -- t� -- lem bur -- �o -- a -- si -- �,
pry� s~o -- tro -- ctv�m a ty -- ra -- ni -- �!
A v~boj, a v~boj, a v~boj.
Za Sov -- de -- pi -- i!
A v~boj, a v~boj, a v~boj.
Za Sov -- de -- pi -- i!

}

accompaniment =\chords {
		}

\score {
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff = mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
