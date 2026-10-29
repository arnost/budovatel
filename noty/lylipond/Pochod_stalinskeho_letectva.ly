\version "2.24.0"
\header {
        title = "Pochod stalinského letectva"
        composer = "P. Akulenko"
        poet = "Sergej Alymov, český text J. Sládek"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key as \major \tempo "Pochodové tempo" 4=116
\partial 2 r8 c8 as g |
\segnoMark 1
f4 as bes8. as16 bes8 c | as8.[( g16]) f4~ f8 c' as g |
f4. as8 g8. es16 f8 des | c2~ c8 c' as g |
f4 as bes8. as16 bes8 es | c8.[( bes16]) as4~ as8 f g as |
bes4. f8 as8. bes16 g8 as | f2~ f8 r es4 |
as8. as16 c2 bes4 | c8. c16 es2 as,4 |
f'4 es des8. des16 as8 bes | c2~ c8 c des es |
\repeat volta 2 {
f8. bes,16 bes4~ bes8 bes c des | es8. as,16 as4~ as8 as bes des |
c4. c8 bes8. as16 bes8 c |
}
\alternative {
{ as2~ as8 c des es }
{ as,2~ as8 c as g \textEndMark "D. S." }
}
\set Score.repeatCommands = #`((volta ,#{ \markup \normal-text "Konec" #}))
as2~ as8 r r4
\set Score.repeatCommands = #'((volta #f))
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Po hvězd -- né vý -- ši, dál než mra -- ky le -- ží, __
kam a -- ni pták by ne -- mo -- hl se vznést, __
i tam náš le -- tec so -- vět -- skou zem stře -- ží, __
vždy chrá -- ní mír a krás -- né vlas -- ti čest! __
Náš ná -- ro -- de, my let -- ci zde jsme
při -- pra -- ve -- ni v~kaž -- dý čas! __
U -- ká -- žem sí -- lu svou __ vždy s~or -- lí od -- va -- hou, __
kdy -- ko -- liv Sta -- lin za -- vo -- lá si
nás! __ U -- ká -- žem
nás! __ \set stanza = "2." Le -- ta -- dla
nás! __
}

accompaniment = \chordmode {
\partial 2 s2 |
f4:m f4:m7 bes4:m/des bes8:m7 c8:7 | f1:m |
f4.:m bes8:m7 es4 bes4:m/des | c1 |
des4 bes4:m7 es4 bes8:m/des es8 | f4:m as2 as8 f8:m7 |
bes2:m/des f4:m/c c8 as8 | f2.:m es4 |
as2. es4:7 | as4/c f2.:m7 |
des4 as4 bes4:m des8 es8 | as1 |
\repeat volta 2 {
des4 g2:dim as4/c | f1:m |
f2:m es2 |
}
\alternative {
{ as1 }
{ as1 }
}
as1
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=116 }
}
