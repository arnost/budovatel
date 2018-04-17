\header {
        title = "Pochod rud�ch n�mo�n�k�";
        composer = "???";
	poet = "???";
}

PrvniHlas = \notes {
d'4 d8 d d4 c8 b | < c2 {c4 ( ) f }> f8 r r f, | d'4 d8 d d4 c8 b |
}

DruhyHlas=\notes{
bes4 bes8 bes bes4 a8 gis | a4 ( ) f f8 r r f | bes4 bes8 bes bes4 a8 gis
}


melody = \notes \relative c' {        
\time 4/4;\key f;
\partial 4;
c4 | f f8 g [ a ( ) bes ] f e | d4 g8 g [ g ( ) f ] e d |
c4  c'8 c [ c () bes ] a g | f4 r r c | f4 f8 g [ a bes ] f e |
d4 g8 g [ g f ] e d | c4 c'8 c [ c bes ] a g | f4 r r f |
\repeat volta 2 {
<
\PrvniHlas
\DruhyHlas
>
<c4 a> r r c, | f4 f8 g a g f e | d4 g8 g g f e d | c4 c'8 c c bes a g |
}
\alternative {{f4 r r f }{ f4 r r2}}

        \bar "|.";
}


text = \lyrics {
Tmy  vl� -- da je svr -- �e -- na, z�� ru -- d� za -- li -- la 
po -- vo -- de� d�l -- nic -- k�ch mas, jen d�l ru -- d� n� -- mo� --
n� -- ci,
p�i -- lo� -- te pu� -- ky k~l� -- ci, a� za -- h�m� re -- vo -- lu --
ce hlas. Ha -- li
ho -- la, od lo -- di k~lo -- di od fa -- fri -- ky k~fa -- bri -- ce
jdem, a s~o -- tro -- ky ru -- ku v~ru -- ce pra -- po -- ry re -- vo --
lu -- ce po ce -- l� ze -- mi roz -- vi -- nem. Ha nem.
}

accompaniment =\chords {
c4 f1 bes 
c1-7 f f
bes c1-7 f
bes f bes 
f f bes 
c1-7 f f 
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
