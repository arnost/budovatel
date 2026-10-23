\version "2.24.0"
\header {
        title = "Rovnost chceme"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key f \major \tempo "Mírným pochodovým tempem, výrazně" 4=96
c4. bes8 | g4 e | f8 e f g | a4 f | bes4. g8 | e4 c | f4. e8 | f4 r |
\repeat volta 2 {
d'4 d | f4^\markup { \small "(ossia e)" } d | c8 c a bes | c4 a | bes4 d | c4. bes8 |
}
\alternative {
{ a4 bes | c2 | }
{ a4 g | f4 r | }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Rov -- nost chce -- me, to pro všech -- ny li -- di, pou -- ta du -- chu ne -- chce -- me!
Vše, co ku po -- ro -- bě li -- du slou -- ží, na -- vždy za -- vr -- hu -- je -- me.
hu -- je -- me.
}

accompaniment = \chordmode {
c2:7 c:7 f f c:7 c:7 f f
\repeat volta 2 {
bes2 bes f f bes c:7
}
\alternative {
{ f4 c f2 }
{ f4 c:7 f2 }
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
