\header {
        title = "Radost zemìdìlce";
        composer = "";
	poet = "J. Hilèr";
}

melody = \notes \relative c'' {        
\time 4/4;\key es \major;
\repeat volta 2 {
bes4 c bes as | g2 ( ) bes4 bes | es d bes g8 ( ) f | es2 es4 r |
bes' c bes as | g2 ( ) bes4 bes | es d bes f8 () g | es2 es4 r | 
<c' as es as,> <c as es as,>  <c as es as,> <bes g es bes>
<g2 ( e c ( > <)bes4 )g> <bes g e> | 
<as f><bes g><g es><f d> | <es2 ( es (>  <)g4 )es > <bes g es> |
<c as es as,> <c as es as,>  <c as es as,> <bes g es bes>
<g2 ( e c (> <)bes4 g )cis,> <bes g e> | 
}
\alternative{{<as f>< bes g es > <g es bes> <f d bes> es2 es4 r
}{<as4. f> <bes8 g es> <c4 g es bes> <f4 f, d bes> <es2 g, es> <es4
g, es> r}}
        \bar "|.";
}

text = \lyrics {
Po -- mo -- hl jsem p¹en -- ce, a -- by pro mír zrá -- la,
vy -- ¹el me -- zi ¾en -- ce do ú -- rod -- ných dá -- lav.
Vy -- ¹el me -- zi ¾en -- ce do ú -- rod -- ných dá -- lav.
Vy -- ¹el me -- zi ¾en -- ce do ú -- rod -- ných dá -- lav.
or -- li pøe -- vy -- so -- ko.
}

accompaniment =\chords {
es2. bes4:7 es1 c4:min g:min es bes:7 es2. bes4:7
es2. bes4:7 es1 c4:min g:min es bes:7 es2. es4:7 as2. es4
c2 c:7 f4:min es2 bes4:7 es2. es4:7 as2. es4 c2. c4:7
f4:min es2 bes4:7 es1 f4:min es2 bes4:7 es1
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
                               \midi  { \tempo 4=180;}
                               \paper { linewidth = 20.0\cm; }
                       }


