\version "2.24.0"
\header {
        title = "Tak chmurně šuměl Brjanský les"
        composer = "S. Kac"
        poet = "A. Sofronov, český text J. Holečková"
}

melody = \fixed c' {
        \clef treble
        \time 3/4 \key d \minor \tempo "Volně" 4=72
        \partial 8 a8 |
        \repeat volta 2 {
          \tuplet 3/2 { d8[( f]) a } d'4. a8 |
          c'8 bes16[( a]) g4. f8 |
          \tuplet 3/2 { e8[( g]) bes } d'8.[ d'16] c'8[ bes] |
          bes8.[( a16]) c'4 r8 es8 |
          \tuplet 3/2 { d8[( fis]) a } es'8.[ es'16] d'8[ c'] |
          c'8.[ bes16] d'4 r8 bes8 |
          a8.[ bes16] a8[ g] f[ g] |
          a8.[( e16]) a4 r8 es8 |
          \tuplet 3/2 { d8[( fis]) a } es'8.[ es'16] d'8[ c'] |
          c'8.[ bes16] d'4 r8 bes8 |
          a8.[ bes16] a8[ g] f[ e] |
        }
        \alternative {
          { a4 d4 r8\fermata a8 | }
          { a4 d'2\fermata \bar "|." }
        }
}

text = \lyricmode {
\set stanza = "1."
Tak chmur -- ně šu -- měl brjan -- ský les, níž plu -- ly mra -- ky ve stmí -- vá -- ní,
a me -- zi sos -- na -- mi šla zvěst, že jdou… že jdou do bo -- je par -- ty -- zá -- ni,
a me -- zi sos -- na -- mi šla zvěst, že jdou, že jdou do bo -- je par -- ty --
zá -- ni. Po
zá -- ni.
}

accompaniment = \chordmode {
        \partial 8 s8
        \repeat volta 2 {
          d2.:m g2.:m c2.:7 f2 f4:7
          d2.:7 g2.:m d2.:m a2.:7
          d2.:7 g2.:m d2:m g4:m
        }
        \alternative {
          { a2:7 d4:m }
          { a4:7 d2:m }
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
        \midi { \tempo 4=72 }
}
