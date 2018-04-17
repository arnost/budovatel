\header {
        title = "Údernická";
        composer = "M. Barvík";
	poet = "Dr. K. M. Walló";
}

piskanii = \notes \relative c''{
\repeat volta 2 {
[ fis8. g16 ] [ a8 g ] | [fis-. e-.]  [fis-. e-.] |
[ fis8.-. g16-. ] [ a8-. g-. ] fis4 e 
[ fis8. g16 ] [ a8-. g-. ] | [fis-. e-.]  [fis-. e-.] |
[ fis8.-. g16-. ] [ a8-. g-. ] fis4 e |}
<d4 a fis> r
}

piskaniii = \notes \relative c''{
\repeat volta 2 {
[ d8. e16 ] [ fis8 e] | [dis-. cis-. ] [dis-. a-.] |
[ d8.-. e16-. ] [ fis8-. e-.] | dis4 a |
[ d8. e16 ] [ fis8-. e-.] | [dis-. cis-. ] [dis-. a-.] |
[ d8.-. e16-. ] [ fis8-. e-.] | dis4 a |}
}

melody = \notes \relative c' {
         \time 2/4;\key c;
d4 d8 d | a'4 a | g a | b g  |
a4 e8 e | a4 a | b c | a r |
d4 d8 c | b4 a | b g | g g | 
a4 d,8 d | a'4 a | b cis | a r |
\key g;
 <\piskanii \piskaniii>
        \bar "|.";
}

text = \lyrics {
Sou -- dru -- zi vzhù -- ru do ú -- to -- ku!
A» ka¾ -- dý do -- bøe za -- mí -- øí,
ú -- ko -- ly prv -- ních pì -- ti ro -- kù,
my chce -- me spl -- nit za èty -- øi.
}

accompaniment =\chords {
d1 g 
a-min e2-7 a-min
d1 g 
d e2-7 a 
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

