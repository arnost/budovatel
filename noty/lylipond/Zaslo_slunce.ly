\version "2.24.0"
\header {
        title = "Zašlo slunce"
        composer = "M. Blantěr"
        poet = "A. Kovalenkov, český text L. Kubišta"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key c \minor \tempo "Nepříliš rychle" 4=100
\partial 4 c8 es |
\repeat volta 4 {
\mark \markup { \musicglyph "scripts.segno" }
g4 as~ | as g8 f | g[( f]) c4~ | c8 r c es | g g f g | bes c bes as | g[( f]) es4~ | es8 r es g |
bes4 c~ | c bes8 as | g[( f]) c4~ | c8 r es g | bes c bes as | g as g f | g4 c~ | c8 r es, g |
bes4 c~ | c bes8 as | g[( f]) c4~ | c8 r es g | bes c bes as | g as g f | g4 c~ |
}
\alternative {
{ c8 r c, es }
{ \mark \markup { \musicglyph "scripts.coda" } c'8\repeatTie r c, es }
}
g4 as~ | as g8 f | g[( f]) c4~ | c8 r c es | g g f g | bes c bes as | g[( f]) es4~ | es8 r es g |
\repeat volta 2 {
bes4 c~ | c bes8 as | g[( f]) c4~ | c8 r es g | bes c bes as | g as g f |
}
\alternative {
{ g4 c~ | c8 r es, g }
{ g4 c~ | c2~ | c2~ | c2~ | c2~ | c4 r \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Za -- šlo slun -- ce za pa -- hor -- ky, nad ře -- kou se v~leh -- kých mrač -- nech ml -- ha vá -- lí.
Step -- ní ces -- tou do -- mů z~vál -- ky plu -- ky ru -- do -- ar -- měj -- ců po -- cho -- do -- va -- ly.
Step -- ní ces -- tou do -- mů z~vál -- ky plu -- ky ru -- do -- ar -- měj -- ců po -- cho -- do -- va -- ly.
Ko -- ši -- _ Za -- šlo
slun -- ce za pa -- hor -- ky, nad ře -- kou se v~leh -- kých mrač -- nech ml -- ha vá -- lí.
Step -- ní ces -- tou do -- mů z~vál -- ky plu -- ky ru -- do -- ar -- měj -- ců po -- cho -- do --
va -- ly. _ _ va -- ly.
}

textc = \lyricmode {
\set stanza = "3."
Ži -- vo -- tů svých ne -- še -- tři -- li, když šli há -- jit svo -- ji sva -- tou rod -- nou ze -- mi.
U -- há -- ji -- li, zví -- tě -- zi -- li, zví -- tě -- zi -- li nad do -- by -- va -- te -- li vše -- mi.
U -- há -- ji -- li, zví -- tě -- zi -- li, zví -- tě -- zi -- li nad do -- by -- va -- te -- li vše -- mi.
Rád se
}

accompaniment = \chordmode {
\partial 4 c4:m
\repeat volta 4 {
c4:m f4:m f4:m c8:m f8:m c8:m f8:m c4:m c2:m c2:m es8 as8 g8:m bes8:7 es2 es2
es4 as4 as4 c8:m f8:m c8:m f8:m c4:m c2:m es2 es8 f8:m c8:m g8 c2:m c2:m
es4 as4 as4 c8:m f8:m c8:m f8:m c4:m c2:m es2 es8 f8:m c8:m g8 c2:m
}
\alternative {
{ c2:m }
{ c2:m }
}
c4:m f4:m f4:m c8:m f8:m c8:m f8:m c4:m c2:m c2:m es8 as8 g8:m bes8:7 es2 es2
\repeat volta 2 {
es4 as4 as4 c8:m f8:m c8:m f8:m c4:m c2:m es2 es8 f8:m c8:m g8
}
\alternative {
{ c2:m c2:m }
{ c2:m c2:m c2:m c2:m c2:m c2:m }
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
          \new Lyrics \lyricsto "one" \textc
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=100 }
}
