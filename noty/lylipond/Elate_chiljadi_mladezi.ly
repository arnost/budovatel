\version "2.24.0"
\header {
        title = "Elate chiljadi mladeži"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key es \major \tempo "Pochodem" 4=112
\partial 8 bes8 |
g'4. f8 | es8. f16 g8 es8 | f4 f4 | r4 r8 bes,8 |
as'4. g8 | f8. g16 as8 f8 | g4 g4 | r4 r8 bes8 |
bes4. bes8 | c8. bes16 as8 c8 | bes4. bes8 |
c8. bes16 as8 c8 | bes4 g4 | f4 r8 bes8 |
bes4 g4 | f4 r8 bes,8 | es4. es8 |
f4. f8 | g4. as8 | bes4 as8 g8 |
f4. f8 | g4. g8 | as4. bes8 |
c4 bes8 as8 | bes8. as16 g8 f8 | g4 as4 |
bes2 ~ | bes4 r8 bes8 | bes8 r8 r8 bes8 |
bes8 r8 r8 bes8 | es2 ~ | \partial 4. es4 r8 \bar "|."
}

text = \lyricmode {
E -- la -- te chil -- ja -- di mla -- de -- ži
na -- rod -- na -- ta stra -- na na -- dež -- da
vdig -- ne -- te kir -- ki zna -- me -- na
da za -- šum -- jat ka -- to go -- ra,
ka -- to go -- ra.
Za u -- dar -- ni -- ci -- te pre -- kras -- ni
za slan -- če -- vi -- ja tru -- dov
praz -- dnik za chu -- ba -- va -- ta ni stra -- na __
u -- ra, u -- ra, u -- ra! __
}

accompaniment = \chordmode {
\partial 8 es8
es2 es bes bes
bes bes es es
es as es
as es bes:7 es
bes es bes
es es bes
es as as
bes es4 as es2
es bes:7 bes:7
es2 es4.
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
        \midi { \tempo 4=112 }
}
