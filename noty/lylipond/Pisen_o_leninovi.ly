\header {
        title = "Píseò o Leninovi";
        composer = "V. ©afrannikov";
}

melody = \notes \relative c' {        
\time 4/4;\key c;
 e4 a8. c16 b4  g8. e16 | a4 g8. a16 e4 e | d4 f8. a16 b8 c4 b8 |
  a4 d8. a16 e2 | e'4 e8. e16 e4 a,4 | d4 d8. c16   b8. ( ) a16   a4   |
 f8 a4 c8 b a4 b8 | g2. r4 | e'4 e8. e16 e4 a,4 |
d4 d8. c16  b8. ( ) a16  a4    | f8 a4 c8 b d4 e8 |  a,4 ( )  a8   r8 r2 |
        \bar "|.";
}

text = \lyrics {

Ne -- ze -- møel, ¾iv je ná¹ Le -- nin  je s~ná -- mi, u Krem -- lu ro -- dné -- ho
on kli -- dnì spí. Støí -- br -- ných je -- dlí prù -- vod ho chrá -- ní,
hvì -- zdy tam na strá -- ¾i spí. Støí -- br -- ných je -- dlí 
prù -- vod ho chrá -- ní hvì -- zdy tam na strá -- ¾i bdí.

}

accompaniment =\chords {
a2-min e2-min f2 c2 d2-min d2-min
f2 c2 c2 a2-min d2-min a2-min 
d2-min e2-7 c2. r4 e2-7 a2-min d2-min a2-min d2-min e2-7 a4.-min
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
        \midi  { \tempo 4 =70;}
        \paper { linewidth = 18.0\cm; }
}
