\version "2.24.0"
\header {
        title = "Usměvavá zem"
        subtitle = "(Mládežnická)"
        composer = "Harry Macourek"
        poet = "Václav Sýkora"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key es \major \tempo "Pochodem" 4=112
r2 r8 bes,8^\markup { \small "Solo" } es8 g8 |
bes8 bes8 r8 bes8 bes8 as8 g8 f8 |
g4 es4 r8 es8 g8 bes8 |
c'4 c'4 c'8 bes8 as8 g8 |
f4 r4 r8 f8 g8 as8 |
bes8 bes8 r8 bes8 bes8 as8 g8 f8 |
g4 es4 r8 g8 g8 ges8 |
f4 f4 g8 f8 g8 a8 |
bes4 r4 r8 bes8 a8 bes8 |
c'4 c'4 c'8 es8 as8 c'8 |
bes4 bes4 r8 es8 f8 g8 |
as4 as4 as8 c8 f8 as8 |
g4 r4 r8 g8 a8 b8 |
c'4 c'4 c'8 bes8 as8 g8 |
as4 f4 r8 f8 g8 as8 |
bes4 es4 g8 f8 es8 d8 |
es4 r4 r2 \bar "||"
c'4\mf^\markup { \small "Unis." } es8 f8 g8 f8 es4 |
f4 f8 g8 as8 g8 f8 c8 |
g4 g8 as8 bes8 as8 g8 g8 |
as8 as8 as8 bes8 c'4 d'4 |
es'4 es'8 es'8 es'8 d'8 c'8 c'8 |
bes8 c'8 bes8 as8 g4 f4 |
c'4 es8 f8 as8 f8 es8 es8 |
f8 es8 d8 g8 c4 c4 \bar "||"
es'4^\markup { \small "Sbor" } es'8 es'8 es'8 d'8 c'8 c'8 |
bes8 c'8 bes8 as8 g4 f4 |
c'4 es8 f8 as8 f8 es8 es8 |
f8 es8 d8 g8 c4 c4 \bar "|."
}

text = \lyricmode {
Už je nás to -- lik a stá -- le mo -- hut -- ní -- me,
ú -- smě -- vy mar -- ně hle -- dat ne -- bu -- dem.
Už je nás to -- lik a vši -- chni do -- bře ví -- me,
jak po -- sta -- ví -- me u -- smě -- va -- vou zem.
A~z na -- ší prá -- ce no -- vá ze -- mě vzro -- ste
a bu -- de smát se šťast -- ným ú -- smě -- vem,
své mla -- dé hla -- vy vši -- chni hr -- dě nos -- te,
my po -- sta -- ví -- me u -- smě -- va -- vou zem.
Hej, chla -- pci, dě -- vča -- ta, ať za -- zní u -- li -- ce -- mi
pís -- nič -- ka roz -- pja -- tá o u -- smě -- va -- vé ze -- mi,
pí -- snič -- ka roz -- pja -- tá o ze -- mi, kte -- rou má -- me,
hej, chla -- pci, dě -- vča -- ta, my ži -- vot pře -- dě -- lá -- me.
Pís -- nič -- ka roz -- pja -- tá o ze -- mi, kte -- rou má -- me,
hej, chla -- pci, dě -- vča -- ta, my ži -- vot pře -- dě -- lá -- me.
}

textB = \lyricmode {
Už je nás to -- lik a stá -- le mo -- hut -- ní -- me,
po svě -- tě smut -- ně cho -- dit ne -- bu -- ďem.
Už je nás to -- lik a vši -- chni do -- bře ví -- me,
jak po -- sta -- ví -- me u -- smě -- va -- vou zem.
A až se ce -- lá do ú -- smě -- vů zha -- lí,
pak hr -- dě ře -- knem v~ce -- lém svě -- tě všem:
My spl -- ni -- li jsme, co jsme sli -- bo -- va -- li,
my po -- sta -- vi -- li u -- smě -- va -- vou zem.
}

accompaniment = \chordmode {
s2 s8 s8 es4 |
es4. as4. bes4:7 |
es1 | c1:7 | f1:m | bes1:7 | es1 | f1:7 | bes1:7 |
as1 | es1 | f1:m | g1 | c2.:m c4:7 |
f2..:m bes8 | es4 c4:m f4:m bes4:7 | es1 |
c1:m | f2:m bes2:7 | es1 | f2.:m bes4:7 |
as1 | es2. g4:7 | c1:m | f4:m g4:7 c2:m |
as1 | es2. g4:7 | c1:m | f4:m g4:7 c2:m |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
