\header {
        title = "Pohøební pochod ruských revolucionáøù";
        composer = "";
	poet = "";
}

melody = \notes \relative c' {        
\time 4/4;\key g;
\partial 8;
e8 | b'4 [ a16 () g ] [ fis ( ) e ] b'4  [a16 () g ] [ fis () e ]
fis4 fis8. fis16 fis4 r8 fis8 | a4 b8 c [ b () a ] g fis |
[ e () g ] [ b () g ] e4 r8 e | b'4 [a16 () g ] [fis () e] b'4 [a16 ()
g ] [fis () e] | fis4 fis8. fis16 fis4 r8 fis8 | a4 c8 a g4 fis8 fis |
[e8 () g] [b () g ] e4 r8 b' | d4 d8. d16 d4 e8. e16 |
d4 c8. b16 c4 r8 d, | c'4 c8. c16 c4 d8. c16 |
c4 b8 ais b4 r8 e, | b'4 [a16 ()g ] [ fis () e] b'4 [a16 ()g ] [ fis
() e] | fis4 fis8. fis16 fis4 r8 fis8 | a4 a8 c8 b a g fis |
e g b g e4 r8 |
        \bar "|.";
}

text = \lyrics {
Vy za o -- bì» pad -- li jste v~kru -- tém bo -- ji, za o -- bì» své
lás -- ky k~v¹em tr -- pí -- cím, 
vy stá -- li jste za ni -- mi du -- ¹í svo -- jí,
svou ctí, svo -- bo -- dou svo -- jí, ¾i -- tím svým.
Po lé -- ta  jste chøad -- li v~¾a -- lá -- øích te -- mných, tam kat u --
ko -- val vás v~¾e -- le -- zech pev -- ných, tam pou -- ta vám øin -- èe -- la
v~pøí -- ¹er -- ný kout, tam vy -- økli jste nad ty -- ra -- nem spra
-- ved -- li -- vý soud.
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
        \midi  { \tempo 4 =100;}
        \paper { linewidth = 18.0\cm; }
}

