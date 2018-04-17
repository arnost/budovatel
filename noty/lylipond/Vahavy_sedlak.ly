\header {
        title = "V�hav� sedl�k";
        composer = "Ji�� V�lek";
	poet = "Anton�n Lacina";
}

melody = \notes \relative c' {        
\time 2/4;\key f \major;
c4 f | g bes | <a8 f> <bes g> <c4 a> | 
\time 3/4; <bes8 d><a c><bes4 g> <g e> |
<f a><a c> r | \time 2/4; c,4 f | g bes | <a8 f> <bes g> <c4 a> | 
\time 3/4; <bes8 d><a c><bes4 g> <g e> | <g e> f r
<bes8 d,><c f,><bes4 d><c8( e(><)d )bes> |
<d4 bes><c8( a(><)b )gis><c4 a> |
g8 <a d,> <bes4 g> <c e,> | <a cis,> <a cis,> r |
\time 2/4; c,4 f | g bes | <a8 fis> <bes g> <c4 a> | 
\time 3/4; <bes8 d><a c><bes4 g> <g e> | <g e> f r
        \bar "|.";
}

text = \lyrics {
Slun -- ce do n�j pra -- �i -- lo, 
sk�� -- pa -- la mu ko -- sa,
od r� -- na se lo -- po -- t�, 
za -- �al by -- la ro -- sa.
Ne� po -- l�� -- ko po -- ko -- s�,
a� je to -- ho kou -- sek,
z� -- da bu -- dou zlo -- me -- na,
po -- pli -- va -- n� brou -- sek.

}

accompaniment =\chords {
f2 c:5.6 f g2:min c4:7
f2. f2 c:5.6 f g2:min c4:7 f2.
bes2. f g2:min e4:3-.5- a2.:7
f2 c:5.6 d:7 g2:min c4:7 f2.
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


