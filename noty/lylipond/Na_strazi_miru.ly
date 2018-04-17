\header {
        title = "Na strá¾i míru";
        composer = "V. Bìlyj";
	poet = "I. Frenkel";
}

PrvniHlas = \notes \context Voice = prvni {
\property Voice.verticalDirection = \up
cis4 cis r8. e16 cis8. b16 | a4 a r8. e16 a8. gis16 | fis4 ()
fis8. gis16 a4 b | cis2 r8 cis8 cis8. cis16 | d4 fis,8. fis16 cis'4 ()
cis8. b16 | b4 a r8 a8 gis fis | e4 a8. e16 cis'4 b | a4 r r2 |

}

DruhyHlas = \notes \notes \context Voice = druhy {
\property Voice.verticalDirection = \down
a4 a r8. e16 a8. e16 | cis4 cis r8. e16 cis8. e16 | fis4 ()
fis8. fis16 fis4 d |
cis2 r8 cis'8 cis8. cis16 | b4 fis8. fis16 eis4 () eis8. cis16 | fis4
fis r8 fis gis fis | e4 a8. e16 e4 e | a4 r r2 |
}

melody = \notes \relative c' {        
\time 4/4;\key c;
        \bar "|.";
e4 dis8. e16 a4 a8. g16 | f4 c8. d16 e2 | e4 dis8. e16 c'4 b8. a16 |
g4 g8. a16 e2 | e4 f8. g16 a4 a8. a16 | b4 gis8. e16 c'2 | c4 b8. a16
e'4 e, | c'4 b a8 r16 e < e'8. cis > < d16 b > | 
\key a;
<\PrvniHlas
\DruhyHlas
>
}

text = \lyrics {
Bo -- há -- èi chtí, a -- by vzplál vá -- lky ¾ár, svìt a -- by ¹el zno --
vu na smrt a zmar; leè pro -- ti nim mi -- li -- o -- ny jsou nás, a
-- rmá -- da mí -- ru vy -- ¹la vèas! Na strá -- ¾i mí -- ru chce li
-- dstvo bý -- ti! Teï k~ze -- mi zem a svor -- nì jít! Jak dì -- la
vý -- støel sly¹ vý -- zvy hømí ti hlas je -- den: Vá -- lka ji¾ ne
-- smí být.

}

accompaniment =\chords {
a1-min f2 e2-7 | a2-min d2-min g2-7 c |
c2-7 f e-7 a-min f-7 a2.-min e4-7 a2 |
a1 a1 d cis b2-min cis fis2-min d |
a2 a-7 a4 r r2
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
        \midi  { \tempo 4 =120;}
        \paper { linewidth = 18.0\cm; }
}
