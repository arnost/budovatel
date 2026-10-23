\version "2.24.0"
\header {
        title = "Jen dál!"
        composer = "Otakar Jeremiáš"
        poet = "Jan Neruda"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Bystře a radostně" 4=112
d4 d8. e16 fis4. g8 | a8 b16[( a]) g8 fis e4 e |
d4 d8. e16 fis4. g8 | a8 b16[( a]) g8 fis e4 r |
fis4 fis8 gis a4 a | b8 cis d b cis4 a |
fis4 fis8 gis a4 e' | d8 cis16[( b]) cis8 b a4 r |
cis4 cis8 fis, fis4 r8 fis | fis8 gis ais b cis8.[( d16]) cis4 |
b4 d8 b b4 r8 b | d8 b ais b fis'4.( e8) \bar "||"
\repeat volta 2 {
d4 cis8 b a4. fis8 | fis8 e d e fis4 a | d8 r cis b d a fis g |
}
\alternative {
{ a4. b8 a2 }
{ a4. a8 d2 }
}
\set Score.repeatCommands = #'((volta "Závěr"))
a4. a8 d2
\set Score.repeatCommands = #'((volta #f))
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Z~bouř -- né -- ho ča -- su jsme se na -- ro -- di -- li
a krok za kro -- kem v~bouř -- ných mrač -- nech jdem,
vstříc hr -- dě své -- mu vzne -- še -- né -- mu cí -- li,
šíj klo -- ní -- ce jen před svým ná -- ro -- dem.
My vě -- dě -- li, co na nás ces -- tou če -- ká,
byť hrom však bil a mráz nám v~kos -- ti vál.
Toť na -- še čes -- ká hud -- ba o -- de -- vě -- ká,
my při ní půj -- dem k~pře -- du dál, jen dál,
dál, jen dál! věč -- ně dál!
}

accompaniment = \chordmode {
d1 | d2 e4:m7 a4:7 | d1 | d2 e4:m7 a4:7 |
d2 a2 | b4:m e4:7 a2 | d2 a2 | b4:m e4:7 a2 |
fis1 | fis1 | b2:m b2:m7 | g2:7 fis2 |
\repeat volta 2 {
g2 d2 | a2:7 d2 | gis4:m7.5- b4:m d2 |
}
\alternative {
{ a2:7 d2 }
{ a2:7 d2 }
}
a2:7 d2
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
