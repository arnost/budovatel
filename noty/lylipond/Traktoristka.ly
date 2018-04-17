\header {
        title = "Traktoristka";
        composer = "Èastu¹ka";
	poet = "M. Du¹ková";
}

melody = \notes \relative c'' {        
\time 2/4;\key es \major;
\repeat volta 2 {
bes8 bes bes bes |
bes bes bes g | bes bes bes as | g4 f | 
es2 ( |  es4 ) f | bes8 bes bes c |
bes bes bes g | bes c bes as |
g4 f | es4 r | r2 | <c'8 as> <c8 as> <c8 as> <bes g>|
<as f> <as f> <as f> <as c> |
<bes g> <as c> <bes g> <as f> |
<g4 es > <f d> | <g2 ( es (> | <as4 f> < )bes )g> |
<c8 as> <c8 as> <c8 as> <bes g>|
<as f> <as f> <as f> <as c> |
<bes g> <as c> <bes g> <as f> |
<g4 es > <f d> |
es4 r |
        }
}

text = \lyrics {
Za -- »u -- kal mi na o -- kén -- ko, do prá -- ce kdy¾ rá -- no ¹el,
to a -- by mi o své lás -- ce je¹ -- tì jed -- nou po -- vì -- dìl.
To a -- by mi o své lás -- ce je¹ -- tì jed -- nou po -- vì -- dìl,
to a -- by mi o své lás -- ce je¹ -- tì jed -- nou po -- vì -- dìl.

}

accompaniment =\chords {
es2 es2. as4 es bes:7 es2. bes4:7
es2 es2. as4 es bes2:7 r4 r4 es4:7
as4. es8 f4.:min bes8:7
es4. bes8:7 es4 bes:7 es2 f4:min es:7 
as4. es8 f4.:min bes8:7 es4. bes8:7 es4 bes:7 es4
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
                               \midi  { \tempo 4=120;}
                               \paper { linewidth = 20.0\cm; }
                       }


