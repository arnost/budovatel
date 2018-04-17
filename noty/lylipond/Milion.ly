\header {
        title = "Milion";
        composer = "Jiøí Sternwald";
	poet = "Vratislav Bla¾ek, Jiøí Sternwald";
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
¾e si brou -- ká brou -- èek v~trá -- vì, ni -- kdo a» se ne -- di --
ví i ten cvr -- èek bez pís -- niè -- ky mìl by ¾i -- vot ¹e -- di --
vý.

Hra -- je cvr -- èek na hou -- sliè -- ky. ème -- lák bom -- bar --
don, a -- le na -- ko -- nec se se -- jdou v¾dyc -- ky zna -- jí sprá
-- vný  tón. 

Kdy¾ flé -- tna pí -- ská ja -- ko my¹ a ba -- sa bru -- èí ní¾ a ní¾,
nám ne -- smí ta -- hle po -- tí¾ va -- dit, mu -- sí -- me je to --
ti¾ u -- mìt sla -- dit.

Vtip je v~tom vzít v¹i -- chni sprá -- vný tón a mù -- ¾e nás hrát do
-- hro -- ma -- dy tøe -- ba mi -- li -- on, mi -- li -- on, mi -- li
-- on,
mi -- li -- on, mi -- li -- on, mù -- ¾e nás hrát tøe -- ba mi -- li -- on.



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


