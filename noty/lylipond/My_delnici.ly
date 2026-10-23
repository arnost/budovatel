\version "2.24.0"
\header {
        title = "My dělníci"
        composer = "autor neznámý"
}

melody =  \relative c'' {
        \clef treble
        \key bes \major
\repeat volta 2 {
\time 2/4 bes8. bes16 bes8 a | c bes a g | g8. f16 g8 f | g a bes r |
}
\time 3/4 f8 f a4 a | g8 f bes4 bes | a8 bes c4 c | a8 f d'4 bes | \bar "||"
r8 d, f bes d4 ~ | d8 c bes g f4 ~ | f8 r f4. f8 | g f c f d4 |
r8 d f bes d4 ~ | d8 c bes g f4 ~ | f8 r f4. f8 | g f g a bes4\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
My děl -- ní -- ci jsme na svě -- tě nej -- ví -- ce zu -- bo -- že -- ný,
A od pá -- nů vy -- dí -- rá -- ni, plo -- dy prá -- ce jsou nám brá -- ny.
Bla -- ho kde máš, dar -- mo se ptáš, vždyť jsi je -- nom „pro -- le -- tář“,
bla -- ho kde máš, dar -- mo se ptáš, vždyť jsi je -- nom „pro -- le -- tář!“
}

textb = \lyricmode {
pro -- to -- že vše vy -- rá -- bí -- me, ne -- vdě -- kem jsme pla -- ce -- ný.
}

accompaniment = \chordmode {
\repeat volta 2 {
bes2 | f:7 | f:7 | f4:7 bes |
}
f2. | bes | f | f4 bes2 |
bes2. | bes | bes | f2 bes4 |
bes2. | bes | bes | f2 bes4 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=92 }
}
