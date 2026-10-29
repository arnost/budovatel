\version "2.24.0"
\header {
        title = "Suliko (Dušička)"
        composer = "gruzínský nápěv"
        poet = "Akakij Cereteli, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key c \major \tempo "Moderato" 4=80
g8 g e f g4 a8 f | g2. r4 |
b8 b b b b4 d8 b | c2. r4 |
\repeat volta 2 {
  c8 c b \slurDotted c( \slurSolid d[) c b] a | b4 a g2 |
  a8 a g g f4 g8 f | e2. r4 |
}
}

text = \lyricmode {
\set stanza = "1."
Když jsem hle -- dal hrob Su -- li -- čin,
do srd -- ce mi pad čer -- ný stín.
Všech -- no du -- še má po -- zby -- la...
kde jsi Su -- li -- ko roz -- mi -- lá?
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new Voice { \melody }
        >>
        \midi { \tempo 4=80 }
}
