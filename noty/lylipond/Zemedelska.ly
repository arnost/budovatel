\version "2.24.0"
\header {
        title = "Zemědělská"
        composer = "Jiří Pauer"
        poet = "Jiří Pauer"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key g \minor \tempo "Rychle, radostně" 4=132
\repeat volta 4 {
R2*4 |
g'4^"2 sóla" d' | d d | d c | d bes | a c | bes a | bes8 a8 g4 ~ | g2 |
g4 d' | d d | d c | d bes | a c | bes a | bes8 a8 g4 ~ ( | g4 f ) \bar "||"
d'4^"Sbor" f | f f ~ | f8 es d c | d8-> c bes a | bes4 bes | c8 bes a g | a2 | d,2 |
d'4 f | f f ~ | f8 es d c | d8-> c bes a | bes4 bes | c8 bes a g | a2 | d,2 \bar "||"
g4 d' | d d | d c | d bes | a c | bes a | bes8 a8 g4 ~ ( | g4 f ) |
g4 d' | d d | d c | d bes | a c | bes a | g2 ~ | g2 ~ | g2 ~ | g2 ~ | g8 r r4 |
\parenthesize \xNote g'8 r r4 | r2 | R2 |
}
}

text = \lyricmode {
\set stanza = "1."
U nás už se ne -- há -- dá -- me, kdo má vět -- ší po -- le lán. __
Vši -- chni má -- me ru -- ce k~prá -- ci, ni -- kdo ne -- ní je -- nom pán. __
Pro -- to vši -- chni za je -- den táh -- nem pro -- vaz rá -- di,
za to co dnes má -- me,
všech -- nu sí -- lu a chy -- trost do prá -- ce své
pro do -- bro všech li -- dí dá -- me.
U nás už se ne -- há -- dá -- me, kdo má vět -- ší po -- le lán. __
Vši -- chni má -- me ru -- ce k~prá -- ci, ni -- kdo ne -- ní pán. __
hej!
}

accompaniment =\chordmode {
\repeat volta 4 {
g2 g g g
g2 g g g d:7 d:7 d4:7 g4 g2
g2 g g g d:7 d:7 g2 g4 f:7
bes2 bes bes d g d d d
bes2 bes bes d g d d d
g2 g g g d:7 d:7 g2 g4 f:7
g2 g g g d:7 d:7 g g g g g g g g
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
        \midi { \tempo 4=132 }
}
