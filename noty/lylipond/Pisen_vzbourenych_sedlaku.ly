\version "2.24.0"
\header {
        title = "Píseň vzbouřených sedláků"
        composer = "Míla Kraus"
        poet = "Jaroslav Vrchlický"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Tempo pochodu" 4=112
d4 r8 a8 d4 fis | e2 a,4 r | e'4 fis g fis | e4. r8 r2 |
g4 g g a8[( b]) | fis2 fis | e4 d cis b | e4 r r2 |
g8 g g a16[( b]) a8 fis fis fis | e e e fis16[( g]) fis8 d b a |
cis4 d e d | fis4. r8 r2 |
g8 g g a16[( b]) a8 fis fis fis | e e e fis16[( g]) fis8 d b a |
fis'4 fis e a, | d4 r r2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Nu, co pat -- ří pá -- nu? V~stře -- še kaž -- dý hřeb,
kaž -- dá krů -- pěj v~džbá -- nu, na po -- li -- ci chléb,
je -- ho vše jest, a -- le, brat -- ři, ko -- sa v~šij a v~leb mu pat -- ří
o -- ko -- va -- ný cep.
Je -- ho vše jest, a -- le, brat -- ři, ko -- sa v~šij a v~leb mu pat -- ří
o -- ko -- va -- ný cep.
}

accompaniment =\chordmode {
d1 a a2 d a1
a1 d e a
a2 d a d4 g8 a
a2. g4 d1
g2 d a d4 g8 a
d2 a d1
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
