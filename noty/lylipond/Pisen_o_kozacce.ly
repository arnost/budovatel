\version "2.24.0"
\header {
        title = "Píseň o kozačce"
        composer = "M. Blantěr"
        poet = "S. Alymov, český text L. Kubišta"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Pomalu" 4=76
        \partial 4 d8 e8 |
        f4 f8 e8 d4 f8 g8 |
        a4 a8 g8 f4 a8 bes8 |
        c'4 c'8 c'8 c'4 bes8 c'8 |
        a2 r4 g8 a8 |
        \repeat volta 2 {
          bes4 d'8 f'8 e'4 d'8 e'8 |
          a4 c'8 e'8 d'4 c'8 d'8 |
          c'4 bes8 d'8 a4 g8 a8 |
        }
        \alternative {
          { d'2 r4 g8 a8 | }
          { d'2 ~ d'8 r8 r4 \bar "|." }
        }
}

text = \lyricmode {
\set stanza = "1."
Po ste -- pi vá -- nek lét, za -- chvěl se mo -- drý květ,
mo -- drý jak ne -- be -- sa nad ste -- pí. Oj, ten
čas hr -- din -- ný, v~pa -- mě -- ti vždy ži -- vý, mi -- nu -- lo bou -- ře již na -- pě --
tí. Oj, ten tí.
}

textb = \lyricmode {
\set stanza = "2."
Do bo -- je šel náš lid, a -- ta -- ma -- ny šel bít,
ko -- zá -- ci pře -- mo -- hli v~so -- bě strach. Ko -- zač --
ka s~ni -- mi šla, a -- by jim po -- mo -- hla v~par -- ty -- zán -- ských bo -- jích na ho --
rách. Ko -- zač -- rách.
}

accompaniment = \chordmode {
        \partial 4 s4
        d1:m d1:m f2 c2:7 f2 d2:7
        \repeat volta 2 {
          g2:m c2:7 f2 d2:7 g2:m a2:7
        }
        \alternative {
          { d1:m }
          { d1:m }
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
          \new Lyrics \lyricsto "one" \textb
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
        \midi { \tempo 4=76 }
}
