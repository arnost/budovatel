\version "2.24.0"
\header {
        title = "Nový je den"
        composer = "Jiří Pauer"
        poet = "Jiří Pauer"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key es \major \tempo "Rázně" 4=112
es4 es8. es16 es4 r | f8 f4 f8 c4 d | es4 es8. g16 bes4 bes | bes4 r r2 |
c4 c8 c bes bes r4 | aes4 bes8 aes g g r4 | es4 f8 f g4 es | f4 f f r |
es4 es8. es16 es4 r | f4 f8 f c4 d | es4 es8. g16 bes4 bes | bes4 r r2 |
c4 c8 c bes bes r4 | aes4 bes8 aes g g r4 | es4 f8 f g4 g | g4 r r2 |
g4 g c c | aes8 g aes bes g2 | fis4 fis8 g a4 d, | g8.[( fis16]) g8 a bes4 g |
bes4-> g-> bes8-> g-> bes-> g-> | c4-> f, f( bes,8) r |
es4 es8. es16 es4 r | f8 f4 f8 c4 d | es4 es8. g16 bes4 bes | bes4 r r2 |
c4 c8 c bes bes r4 | aes4 bes8 aes g g r4 | es4 f8 f g4 es | f4 bes, es r \bar "|."
}

text = \lyricmode {
No -- vý je den, no -- vé je rá -- no, no -- vý se ro -- dí svět.
O -- tev -- ři o -- či a nas -- tav u -- ši, jdi za cí -- lem a nik -- dy zpět.
Ráz, dva a tři, pí -- seň si zpí -- vej ve -- se -- lou do kro -- ku,
my čes -- ká mlá -- dež s~du -- chem jdem do -- by a s~do -- bou po -- kro -- ku.
S~pís -- ní na rtech svě -- tem chce -- me jít, slun -- ce a vo -- du,
slun -- ce a vo -- du chce -- me všich -- ni mla -- dí rá -- di mít. __
No -- vý je den, no -- vé je rá -- no, no -- vý se ro -- dí svět,
o -- tev -- ři o -- či a nas -- tav u -- ši, jdi do -- pře -- du a nik -- dy zpět.
}

accompaniment =\chordmode {
es1 f2:m d:7 es e:dim7 bes1:7
aes2 c:7 f:m es:aug aes4 aes:m6 es2 f:m bes:7
es1 f2:m d:7 es e:dim7 bes1:7
aes2 c:7 f:m es:aug aes g g1:7
c1:m f2:m c:m d1:7 g:m
es2:7 c:7 f:7 bes:7
es1 f2:m d:7 es e:dim7 bes1:7
aes2 c:7 b:dim7 es aes4 aes:m es2 bes:7 es
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
