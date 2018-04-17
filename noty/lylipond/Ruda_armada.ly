\header {
        title = "Rud� arm�da";
        composer = "";
	poet = "";
}

melody = \notes \relative c' {
        \time 2/4;\key as;
as'4 as8. as16 | as4 g8. f16 | e4 f8. g16 | f2 |
f4 es8. des16 | c4 f8. g16 | as4 g | f r |
as4 as8. as16 | as4 g8. f16 | es4 f8. g16 | f2 |
f4 es8 des | c4 f8. g16 | as4 g | f8 f e f |
\repeat folder 2 {
	g8 g g4 | r8 g f g | as4 as | r8 as g as |
	bes4 es, | es' des | c r | r8 c bes c |
	des4 g, | r8 g as bes | c4 f, | r8 as g f |
	c'4 bes | as g | f2 ( | } 
\alternative {{) f8 f e f }{ f4 r}} 
        \bar "|.";}
	

text = \lyrics {
Jde b� -- l� ar -- m� -- da s�n� -- mi se b�t,
pro ca -- ra tr�n zno -- vu p�i  -- pra -- vit.
Le� z�taj -- gy a� do bri -- tan -- sk�ch mo -- ��
p�st Ru -- d� ar -- m� -- dy ho -- vo -- ��. A� Ru -- d� 
ar -- m� -- da bo -- d� -- ky sv� -- r� mo -- zol -- nou 
ru -- kou pro -- ti v�em, �e -- ka -- j� na n�s 
roz -- hod -- n� bo -- je, pod re -- vo -- lu� -- n�m
pra -- po -- rem. A� Ru -- d� rem.
}

accompaniment =\chords {
f1-min c2-7 f-min
bes-min f-min c-7 f1.-min
c2-7 f-min bes-min f-min c-7 f-min
\repeat folder 2 {es1-7 as es-7 as
bes2-min c-7 f1-min c1.-7
}
\alternative{{f2-min}{f2-min}}
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
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

