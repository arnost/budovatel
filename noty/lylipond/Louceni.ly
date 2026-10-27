\version "2.24.0"
\header {
        title = "Loučení"
        composer = "Dm. Pokrass"
        poet = "M. Isakovskij, český text S. Machonin"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Volně" 4=80
        \repeat volta 2 {
          f4 d a8[ bes] a[ g] |
          f4 d2. |
          f4 a c'8[ d'] c'[ bes] |
          a2. ~ a8 r8 |
          g4 g d'8[ d'] c'[ bes] |
          a4( cis') d'4. r8 |
          d4 d' a8[ g] f[ e] |
        }
        \alternative {
          { \once \override Score.VoltaBracket.text = \markup \normal-text \fontsize #3 \italic "při opakování" d2 ~ d8 r8 r4 | }
          { \once \override Score.VoltaBracket.text = \markup \normal-text \fontsize #3 \italic "při zakončení" d2 ~ d8 r8 r4 | }
        }
        g4 g d'8[ d'] c'[ bes] |
        a4( cis') d'2 |
        c4 a a8[^"zadržet" bes] a[ g] |
        f1\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Při -- šel roz -- kaz, on na zá -- pad, o -- na ji -- nam mu -- sí jít… __
Od -- chá -- ze -- li kom -- so -- mol -- ci v~ob -- čan -- ské se vál -- ce
bít. __
bít. __ Od -- chá -- ze -- li kom -- so -- mol -- ci v~ob -- čan -- ské se vál -- ce bít.
}

accompaniment = \chordmode {
        \repeat volta 2 {
          d2:m a2:7
          d2.:m b4:dim
          f2/c c2
          f2 c4:m d4:7
          g2:m c2:7
          f4 a4:7 d4.:m d8:7
          g2:m a2:7
        }
        \alternative {
          { d1:m }
          { d2:m d2:7 }
        }
        g2:m c2:7
        f4 a4:7 g4:m bes4
        f2/c c2:7
        f1
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
        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=80 }
}
