\version "2.24.0"
\header {
        title = "Partyzánská"
        composer = "nápěv ruské písně Po dolinam i po vzgorjam"
        poet = "podle Petra Parfjonova"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \minor \tempo "Pochodově" 4=108
\partial 4 f8 g |
as4 f as c8( bes) | as8( g) f2 es8 es |
as4 as bes es8( des) | c2 ~ c4 f,8 f |
\repeat volta 2 {
  f'4. es8 des4 c | des4 des r c8 des |
  es4. des8 c4 g' |
}
\alternative {
  { f2. f,8 f }
  { f'2. \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Skal a ste -- pí, di -- vo -- či -- nou,
hla -- do -- vý a roz -- tr -- hán,
s~puš -- kou v~ru -- ce, s~oh -- něm v~srd -- ci
u -- há -- ní vpřed par -- ty -- zán,
s~puš -- kou zán.
}

accompaniment = \chordmode {
\partial 4 s4 |
f1:m | f2.:m es4:7 |
as2 es2:7 | as1 |
\repeat volta 2 {
  f1:7 | bes1 |
  as2 c2 |
}
\alternative {
  { f1:m }
  { f2.:m }
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
        \midi { \tempo 4=108 }
}
