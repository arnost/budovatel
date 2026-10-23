\version "2.24.0"
\header {
        title = "My jsme sedláci"
        composer = "lidová"
}

melody =  \relative c'' {
        \clef treble
        \time 3/4 \key f \major \tempo "Živě" 4=152
c2 bes4 | a a g | a a g | a a g | bes a g | f2 r4 |
\repeat volta 2 {
g4 g a | bes bes g | a a bes | c c a | c c c | d d d | bes a g | f2 r4 |
}
}

text = \lyricmode {
My jsme se -- dlá -- ci v~na -- ší vsi ja -- ko psi o -- šku -- ba -- ní:
kdy -- by byl rych -- tář pes, kan -- tor pes, ša -- fář pes,
by -- la by psů, psů, psů pl -- ni -- čká ves.
}

accompaniment =\chordmode {
f2 c4:7 f2 c4 f2 c4 f2 c4 c2 c4:7 f2.
\repeat volta 2 {
c2. c2.:7 f2. f2. f2. bes2. c2.:7 f2.
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
        \midi { \tempo 4=152 }
}
