\version "2.24.0"
\header {
        title = "Ej, vy koně!"
        composer = "R. Cheif"
        poet = "S. Fogelson, český text J. Sládek"
}

melody = \fixed c' {
        \clef treble
        \time 2/4 \key g \minor \tempo "Živě" 4=120
        bes4 bes | a bes8[ a] | g8 d'4 bes8 | c'4 d'8[( c')] |
        bes4 bes | a a | g8[ g] g[ g] | fis4( d'8) r8 |
        d'4 d' | es'4. d'8 | c'8 f'4 es'8 | d'4 c'8[ bes] |
        a4 a | a g | d d'( | c' bes) |
        g'4. f'8 | g'4 es' | f'8.[ es'16] d'8[ es'] | f'8( g'4) f'8 |
        r8 es'4 d'8 | c'8[ g'] f'[ es'] | d'8.[ c'16] bes8[ c'] | d'4 g' |
        \tempo "Rozhodně"
        c'8 c'4 g8 | c'4 d'8[( c')] | bes8 bes4 f8 | bes4 c'8[( bes)] |
        a4 a | bes8[( c')] a4 | d'2 ~ | d'4 g' |
        c'8 c'4 d'8 | es'4 d'8[( c')] | d'8 d'4 es'8 | d'4 c'8[( bes)] |
        a4 a | bes8[( c')] a4 | g2 ~ | g2 ~ | g2 ~ | g8 r8 \xNote g8 r8 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
„Po -- slou -- chej, co ti sy -- náč -- ku po -- vím,“
pra -- vil sta -- rý ko -- zák je -- den -- krát,
zá -- ko -- nem pro ko -- zá -- ka jest, ko -- ně chrá -- nit, mít je rád! E __
Ej, vy ko -- ně, jež pro -- vá -- zí slá -- va, jak ty va -- še hří -- vy vá -- nek roz -- če -- chrá -- vá.
Ste -- pí se ří -- tí ko -- ní -- ci hbi -- tí, plu -- ky ko -- zá -- ků. __
Ech! Ste -- pí se ří -- tí ko -- ní -- ci hbi -- tí, plu -- ky ko -- zá -- ků. __ Hej!
}

accompaniment = \chordmode {
        g2:m d2 g2:m c2:m
        g4:m es4 f4 d4:m es4 c4:m d2
        bes2 es2 f2 g2:m
        d4:m f4 d4:m c4:m d4 g4:m c4:m bes4:7
        es4 bes4 es4 c4:m bes4. as8 g2:7
        c4:m g4:m f2:7 g4:m f4 bes4 g4:7
        c2 c4:7 f4:7 bes2 g2:m
        c2:m es4 c4:m d2 d4 g4:7
        c2:m f2:7 bes4 f4:7 bes2
        f4 c4 g4:m/d d4 g4:m c4:m g4:m c4:m g4:m c4:m g2:m
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
        \midi { \tempo 4=120 }
}
