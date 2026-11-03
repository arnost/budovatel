\version "2.24.0"
\header {
        title = "Píseň o vlasti"
        subtitle = "Z filmu „Setkání na Labi“"
        composer = "Dmitrij Šostakovič"
        poet = "Jevgenij Dolmatovskij, český text Jelena Holečková"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key aes \major \tempo "Moderato" 4=96
\partial 4 f8 g |
\repeat volta 3 {
aes4 aes8 c es[( des]) c bes | c[( aes]) f4~ f8 r f f | des'4 des8 es f4 des8 c |
bes2~ bes8 r g aes | bes4 g8 bes f'4 es8 des |
c[( des]) es4~ es8 r f des | c4 aes8 c es[( des]) c bes | c2~ c8 r aes aes |
f'4 f8 f f[( es]) des es | f4 f~ f8 r aes, aes | f'4 f8 f aes[( ges]) f( es) |
f2~ f8 r f es | des4 bes8 des f4 es8 des |
c[( des]) es4~ es8 r aes, c | es4 des8 c bes[( des]) c bes | f'2~ f8 r r4 |
}
\alternative {
  \volta 1,2 { r2 r4 f,8 g }
  \volta 3 { R1^\markup { \bold "Konec" } \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Sly -- šet z~dál -- ky hlas ot -- či -- ny na -- ší,
tam kde vol -- nos -- ti ši -- rá je vlast,
ne -- ní nic nad ni na svě -- tě draž -- ší,
mi -- lá so -- vět -- ská zem vo -- lá nás.
Ne -- ní na svě -- tě ze -- mě tak krás -- ná,
ja -- ko máť na -- še rus -- ká zem,
ze všech je -- di -- ná hr -- dá a jas -- ná,
do -- brou mat -- kou je svým sy -- nům všem.
\set stanza = "2."
Kra -- jů
}

accompaniment = \chordmode {
\partial 4 s4
\repeat volta 3 {
s2 bes2:m | bes1:m | bes1:m |
es1 | es2 es2:7 |
aes2. bes4:m | bes2:m es2 | aes1 |
des2 aes2:7 | des2. aes4 | aes2 aes2:7 |
des2. f4:7 | bes2:m es2:7 |
aes1 | aes2 c2:7 | s1 |
}
\alternative {
  \volta 1,2 { s1 }
  \volta 3 { s1 }
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
        \midi { \tempo 4=96 }
}
