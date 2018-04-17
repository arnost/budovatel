\header {
        title = "Milion";
        composer = "Ji�� Sternwald";
	poet = "Vratislav Bla�ek, Ji�� Sternwald";
}

melody = \notes \relative c' {        
\time 4/4;\key c \major;

r4 e8. g16  c4 b | a b a g | a g e e |
f g d2 | c4 e a c | b gis a e | 
d e fis a | g a b2 | c4 c b b |
a b a g | a e e  [ e8 g ]  | f2.  e8 d  |
c4 e d f | e g b a | g g a b | c r r c, \bar "||";
\key f\major; f a c a | r bes8. d16   c8 r r4 |
r2 r4 c, | f a c a | bes c a r4 | r2 r4 f | 
bes d a bes | a bes  b8 c r4 |
f,8 a g f   e d  r4 | e4 f  fis8 g  r4 |
f r a r | g2 r8 bes4. | a4 c bes d | c2. d4 |
f f e d | c d bes c | a a g g | f2. c'8. a16 c2. bes8. g16  |
f2. c'8. a16 | c2. bes8. g16  | f2. d'8. e16 | f4 d c bes |
a4 g8 f (  )f4 r 
        \bar "|.";
}

text = \lyrics {
�e si brou -- k� brou -- �ek v~tr� -- v�, ni -- kdo a� se ne -- di --
v� i ten cvr -- �ek bez p�s -- ni� -- ky m�l by �i -- vot �e -- di --
v�.

Hra -- je cvr -- �ek na hou -- sli� -- ky. �me -- l�k bom -- bar --
don, a -- le na -- ko -- nec se se -- jdou v�dyc -- ky zna -- j� spr�
-- vn�  t�n. 

Kdy� fl� -- tna p� -- sk� ja -- ko my� a ba -- sa bru -- �� n� a n�,
n�m ne -- sm� ta -- hle po -- t� va -- dit, mu -- s� -- me je to --
ti� u -- m�t sla -- dit.

Vtip je v~tom vz�t v�i -- chni spr� -- vn� t�n a m� -- �e n�s hr�t do
-- hro -- ma -- dy t�e -- ba mi -- li -- on, mi -- li -- on, mi -- li
-- on,
mi -- li -- on, mi -- li -- on, m� -- �e n�s hr�t t�e -- ba mi -- li -- on.



}

accompaniment =\chords {
c1 | c2:dim  b:min.7.5- | c:6 g:dim |
d:min g | c a: min | e:7 a:7 | d1:7 |
g:7 | c2 e:min | c:dim b:min.7.5- |
c:6 g:dim | d:min g | c d:min | c c:dim |
g g:7 | c1 | f | bes2 f | d:7 c:7 |
f1 | bes2 f | bes f | bes a:min | f1 |
d:min | c:7 | d:min.7 | g:min |
f2 g:min.7 | f1 | g2:min.7 e | 
f d:7 | g:7 c:7 | f1 | c:7 | f |
c:7 | f | bes2 a:min | g4:7 c:7 f r |
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
                               \midi  { \tempo 4=220;}
                               \paper { linewidth = 20.0\cm; }
                       }


