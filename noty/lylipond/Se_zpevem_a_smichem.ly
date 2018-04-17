\header {
        title = "Ze zpìvem a smíchem";
        composer = "J. Stanislav";
	poet = "O. Rambousková";
}

melody = \notes \relative c' {
        \time 4/4;\key f;
\partial 4;
c4 | d f g a | c8. a16 c4 r c, | d f g a |
c2 r4 d | g, g g a | bes4. a8 g4 d' | c a g f |
c'2 r4 c,4 | < {c'4. a8 d4 c } { a4. f8 bes4 a} > | 
<{ bes a g c, }{ g' f c c }> | <{c'4. a8 d4 c }{ a4. f8 bes4 a}> |
<{bes a g c,}{ g' f c c }> | d d e e | f g a c | bes a g a |
<{c2. c4}{ a2. a4}> | <{bes4 a g a }{ g f c c }> | <{f2.}{ f2.}>
        \bar "|.";
}

text = \lyrics {
Zní zpìv a smích ná¹ po kra -- ji, zní v~ka¾ -- dý smìr i kout,
tam kde se ko -- sy blý -- ska -- jí a kde zøí¹ o -- cel kout.
Jen ro -- ze -- zvuè se je -- ¹tì víc a ro -- ze -- zpí -- vej z~pl --
ných plic ty ze -- mì, kte -- rá ro -- dí¹ lid, jen¾ krá -- èí slun --
ci vstøíc, jen¾ krá -- èí slun -- ci vstøíc.

}

accompaniment =\chords {
r4 f2 g4-min c4-7 f2. c4-7 f2 g4-min c4-7
f1 bes2. d4-min g2-min c2-7 f2 g2-7 
c1 f2 d2 g2-min c2 f2 d g2-min c2 bes2 c2-7 f1 bes2 c2 
f2 d2-7 g2-min c2-7 f2.

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
        \midi  {\tempo 4 =150; }
        \paper { linewidth = 18.0\cm; }
}



