\header {
        title = "";
        composer = "";
	poet = "";
}


PrvniHlas = \notes \context Voice = prvni {
\property Voice.verticalDirection = \up
c8. c16 c8 des | c4 c8 des | c bes as g | [ f ( g ) as  ] bes |
c8. c16 c8 des | [ es ( ) des ] c bes | as bes as g | [ f ( g ) as  ] bes |
es4 es8 fes | es4 es8 fes | es8 r fes r | es r f4 |
c8. c16 c8 des | [ es ( ) des ] c bes | as bes as g | f r r4 |
}

DruhyHlas = \notes \context Voice = druhy{
\property Voice.verticalDirection = \down
as8. as16 as8 bes | as4 as8 bes | as g as g | [ f ( g ) as  ] g |
as8. as16 as8 bes | [ c () bes ] as g | as bes as g | [ f ( g ) as  ] g |
c4 c8 b | c4 c8 b | c8 r b r | c8 r des4 |
as8. as16 as8 bes | [ c () bes ] as g | as bes as g | f8 r r4 |
}

TretiHlas = \notes \context Voice = treti{
\time 2/4;\key as;
f8. f16 f8 c8 | f4 f8 c | f f f c | f4. es8 |
f8. f16 f8 c | f4 f8 c | f f f c | f4. es8 |
as4 as8 < as fes > | as4 as8 < as fes > | as8 r < as fes > r |
 as8 r < as4 d > | f8. f16 f8 bes | [ c ( ) bes ] as g | f c des es |
f r r4 |
\property Voice.verticalDirection = \down
}


melody = \notes \relative c'' {        
<
\time 2/4;\key as;
\PrvniHlas
\DruhyHlas
\context Staff = bottom { 
\TretiHlas }
>
        \bar "|.";
}

text = \lyrics {
Vzne -- ste se a vzlé -- tnì -- te py -- ¹nì, ne -- po -- daj -- nì
mla -- do gvar -- dìj -- ské ru -- dé pra -- po -- ry a vlaj -- ky!
Bou -- øe i s~mra -- èny jen pryè se stroj! hej!
vhù -- ru za vlast svou, mla -- do -- gvar -- dìj -- ci jdem v~boj.
}

accompaniment =\chords {
		}

\score { 
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics

            \context PianoStaff {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}

