\version "2.24.0"
\header {
        title = "Nová pieseň znie"
        composer = "Fedor Ilnickij"
        poet = "A. T. Izotuško"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key c \minor \tempo "Tempo di marcia" 4=112
\partial 4 es8. d16 |
\repeat volta 2 {
c4 c c8. d16 es8. f16 | g2. g8. g16 | c2 bes4. bes8 | g2. es8. d16 |
c4 c c8. d16 es8. f16 | g2. g8. g16 | as2 d,4. as'8 | g2. g8. g16 |
es'4. c8 es8. d16 c8. b16 | c4 g g g8. g16 | c4. as8 c8. bes16 as8. g16 | as4 es es es8. f16 |
g2. es8. f16 | g2. es8. f16 | g4 g as8. es16 d8. c16 | g'2. g8 g \bar "||"
c4 g es f8 g | as4 f d es8 f | g4 g bes8 as g fis | g2. g8 as |
c4 g es f8 g | as4 f d es8 f | g4 g es'8 d c b | c2. g8 g |
c4 as f g8 as | bes4 g es f8 g | as4 as as8 es d c | g'2. g8 g |
as4 f es d | es4 g c b8 c | d4 d es8 d c b | d2. g,8 g |
c4 g es f8 g | as4 f d es8 f | g4 g bes8 as g fis | g2. g8 g |
es'4. d8 c g fis g | bes2 as4 es8 f | g4 g es'8 d c b |
}
\alternative {
  { c2. es,8. d16 }
  { c'4 r4 r2 \bar "|." }
}
}

text = \lyricmode {
Chce -- me
vě -- čný, za -- slú -- že -- ný mier, to je náš dá -- vny cieľ.
Kaž -- dý ná -- jde je -- di -- ný len smer, ce -- stou správ -- nou kto šiel.
Pre -- to poď -- me krá -- snou ce -- stou všet -- kých nás,
le -- bo ten kto zblú -- di, bu -- de smú -- tiť raz,
čuj -- te hlas, vo -- lá vás me -- dzi nás,
nuž poď -- te, už je čas!
No -- vá pie -- seň znie v~ce -- lej kra -- ji -- ne,
pie -- seň prá -- ce mi -- li -- o -- nov nás,
pri nej po -- hly sa všet -- ky ko -- le -- sá v~ru -- kách
toľ -- kých pra -- cu -- jú -- cich más.
Vša -- de roz -- kvit -- ly po -- lia, zá -- hra -- dy,
ve -- čné sln -- ko žia -- ri nad na -- mi.
Za -- tiaľ ne -- vý -- slov -- né hod -- no -- ty
prú -- dia z~fa -- brík, po -- lí a ba -- ní…
V~kaž -- dom srd -- ci znie hlas me -- ló -- di -- e,
tej -- to pie -- sne z~prá -- ce zro -- de -- nej,
na -- še dl -- hé ne -- pre -- hľad -- né ši -- ky
pri nej pôj -- du bu -- do -- vať ďa -- lej!
Chce -- me
lej!
}

accompaniment = \chordmode {
\partial 4 s4
\repeat volta 2 {
c2:m f2:m c1:m as2 bes2 es2. g4:7
c2:m f2:m c1:m f1:m g1:7
c2:m f2:m c1:m as2 es2:7 as1
c1:m as1 c2:m/g f2:m g1
c1:m f2:m g2:7 c1:m g1
c1:m f2:m g2:7 c2:m g2:7 c1:m
f2:m bes2 es2 as2 f2:m as2:7 g1
f1:m c1:m d2 f2:m g1
c1:m f2:m g2 c1:m g1
c1:m e2:dim f2:m c2:m/g g2:7
}
\alternative {
  { c1:m }
  { c1:m }
}
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
