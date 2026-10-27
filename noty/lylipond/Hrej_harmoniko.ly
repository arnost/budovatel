\version "2.24.0"
\header {
        title = "Hrej, harmoniko"
        subtitle = "Častuška"
        composer = "V. Makarov"
        poet = "S. Alymov, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 4/8 \key f \major \tempo "Živě" 4=112
\mark \markup { \musicglyph "scripts.segno" }
c4^"Tenor sólo" a | bes8 c a g | c4 f,~ | f4. r8 | d'4 bes | d8 c es d | g,2~ | g4 r |
g4 bes | d f | e8 d c([ e]) | a,2 | d4 bes | a8 f g g | f2~ | f4 r |
a8^"Baryton sólo" a d c | bes a g([ f]) | e c c' bes | a g f r | d e f d | g a bes r | c bes a g |
\time 3/4 f8 e d a'^"Sbor" a g \bar "||"
\time 4/8
\repeat volta 3 {
bes4^"Refrén" bes~ | bes8 bes bes a | c2 | r8 d d c | d c bes d | c bes d bes |
}
\alternative {
{ c8 bes a g | c a a g }
{ c8 bes a g | f r r4 \mark \markup { \small "D. S." \musicglyph "scripts.segno" } }
{ c'8^"Závěr" bes a c | f2~ | f2~ | f2~ | f2~ | f8 r r4 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Za vsí u ze -- le -- ných za -- hrad, __
ne -- zvá -- le -- ná lu -- ka jsou, __
na har -- mo -- ni -- ku zkus za -- hrát,
bra -- chu, na -- ši vo -- jen -- skou. __
Ru -- dým gar -- dám ne -- do -- jde
v~pís -- ních a -- ni v~bo -- jích dech.
Po svě -- tě se ne -- na -- jde
vo -- ják ja -- ko v~so -- vě -- tech.
Hrej har -- mo -- ni -- ko, __ hrej ve -- se -- lou,
vo -- já -- kům s~pís -- nič -- kou je líp, když na da --
le -- kou ces -- tu jdou. Hrej har -- mo --
le -- kou ces -- tu jdou.
le -- kou ces -- tu jdou. __
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
        \midi { \tempo 4=112 }
}
