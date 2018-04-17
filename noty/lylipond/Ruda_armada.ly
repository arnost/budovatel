\header {
        title = "Rudá armáda";
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
Jde bí -- lá ar -- má -- da s½ná -- mi se bít,
pro ca -- ra trùn zno -- vu pøi  -- pra -- vit.
Leè z½taj -- gy a¾ do bri -- tan -- ských mo -- øí
pìst Ru -- dé ar -- má -- dy ho -- vo -- øí. A» Ru -- dá 
ar -- má -- da bo -- dá -- ky sví -- rá mo -- zol -- nou 
ru -- kou pro -- ti v¹em, èe -- ka -- jí na nás 
roz -- hod -- né bo -- je, pod re -- vo -- luè -- ním
pra -- po -- rem. A» Ru -- dá rem.
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

