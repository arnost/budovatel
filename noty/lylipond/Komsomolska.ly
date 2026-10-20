\version "2.24.0"
\header {
        title = ""
        composer = ""
	poet = ""
}


PrvniHlas =  \context Voice = "prvni" {
\voiceOne
c8. c16 c8 des | c4 c8 des | c bes as g |  f[ ( g  as)  ] bes |
c8. c16 c8 des |  es[ (  des) ] c bes | as bes as g |  f[ ( g  as)  ] bes |
es4 es8 fes | es4 es8 fes | es8 r fes r | es r f4 |
c8. c16 c8 des |  es[ (  des) ] c bes | as bes as g | f r r4 |
}

DruhyHlas =  \context Voice = druhy{
\voiceTwo
as8. as16 as8 bes | as4 as8 bes | as g as g |  f[ ( g  as)  ] g |
as8. as16 as8 bes |  c[ ( bes) ] as g | as bes as g |  f[ ( g  as)  ] g |
c4 c8 b | c4 c8 b | c8 r b r | c8 r des4 |
as8. as16 as8 bes |  c[ ( bes) ] as g | as bes as g | f8 r r4 |
}

TretiHlas =  \context Voice = treti{
\time 2/4\key as \major
f8. f16 f8 c8 | f4 f8 c | f f f c | f4. es8 |
f8. f16 f8 c | f4 f8 c | f f f c | f4. es8 |
as4 as8 < as fes > | as4 as8 < as fes > | as8 r < as fes > r |
 as8 r < as d >4 | f8. f16 f8 bes |  c[ (  bes) ] as g | f c des es |
f r r4 |
\stemDown\slurDown\tieDown
}


melody =  \relative c'' {
<<
\new Staff = "top" <<
  { \time 2/4\key as \major s2*16 \bar "|." }
  \PrvniHlas
  \DruhyHlas
>>
\new Staff = "bottom" \TretiHlas
>>
}

text = \lyricmode {
Vzne -- ste se a vzlé -- tně -- te py -- šně, ne -- po -- daj -- ně
mla -- do gvar -- děj -- ské ru -- dé pra -- po -- ry a vlaj -- ky!
Bou -- ře i s~mra -- čny jen pryč se stroj! hej!
vhů -- ru za vlast svou, mla -- do -- gvar -- děj -- ci jdem v~boj.
}

accompaniment =\chordmode {
		}

\score {
        <<
          \new PianoStaff \with { \autoBeamOff } \melody
          \new Lyrics \with { alignAboveContext = "bottom" } \lyricsto "prvni" \text
        >>
        
  \midi {
    \tempo 4 = 150
    }


        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}

