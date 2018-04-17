\header {
        title = "Milion pa¾í";
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

Mi -- li -- on pa -- ¾í v~tmách se vzpja -- lo, 
èer -- ve -- ný ko -- hout v~støe -- chy vlít! 
Oè ti -- síc let nás o -- krá -- da -- lo, 
my jde -- me so -- bì na zpìt vzít.
A v~ces -- tu svi», kr -- va -- vé ne -- be! 
Kdo tr -- pí¹, k~nám se dej ha hoj!
A o -- høát pojï se, ko -- ho ze -- be,
svìt ho -- øí v~tmách! Nu¾ v~boj! Nu¾ v~boj!

Hoj, dru -- zi v~kra -- ji, v~mì -- stì, 
svou bí -- du v~pla -- men vne -- ste!
Èim kdo's byl rab, v¹e -- cko spal.
Pryè s~ka -- pi -- tá -- lem bur -- ¾o -- a -- si -- í,
pryè s~o -- tro -- ctvím a ty -- ra -- ni -- í!
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
