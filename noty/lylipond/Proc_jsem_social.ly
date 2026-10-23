\version "2.24.0"
\header {
        title = "Proč jsem sociál"
        poet = "Leopold Kochmann"
}

fermataBar = { \mark \markup \musicglyph "scripts.ufermata" }

melody =  \relative c' {
        \clef treble
        \time 3/4 \key f \major \tempo "Recitativo" 4=84
c8 f a4. bes8 | g8 a f4 c | \fermataBar a'8 bes c4 f | bes,8 d c4 r |
\repeat volta 2 {
f,8 f c4 f | bes8 d c4 a | \fermataBar d8 c g4. a8 | bes8 c a4 r |
}
}

text = \lyricmode {
\set stanza = "1."
V~spo -- le -- čen -- ském na -- šem kru -- hu kdy -- si se mě pří -- tel ptal:
po -- věz -- mi u -- přím -- ně, bra -- tře, proč jsi vlast -- ně so -- ci -- ál?
}

accompaniment = \chordmode {
f2. | c4:7 f2 | f2. | bes4 c2:7 |
\repeat volta 2 {
f2. | bes4 c:7 f | c2.:7 | c4:7 f2 |
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
        \midi { \tempo 4=84 }
}
