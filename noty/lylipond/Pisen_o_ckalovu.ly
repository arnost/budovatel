\version "2.24.0"
\header {
        title = "Píseň o Čkalovu"
        composer = "David Saliman-Vladimirov"
        poet = "D. Sedych, český text J. Sládek"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Široce" 4=76
\partial 16 fis16 |
\repeat volta 4 {
b4 b8. cis16 b4 fis8 g | a8([ b,]) d8. e16 fis4. fis8 | g8([ fis]) e d e4 cis8. a16 |
a'2 r4 r8. b,16 | e4 b8. fis'16 g8([ e]) g a | b8([ fis]) b cis d4. d8 |
e8([ c!]) g c b4 a8. fis16 | b2~ b4 r8 d,8^"Sbor" \bar "||"
\time 6/8 \key g \major \tempo "Živěji" 4.=69
d4.^"Refrén" g4 b8 | e8 d c d4 b8 | g8 g g b a g | a4.~ a8 r e |
e4. a4 c8 | f!8 e d e4 e8 | fis,8 g a c b a | b4.~ b8 r b |
g'4.~ g8 g g | g4. d4 b8 | e8 e e a, b c | d4.~ d4 e8 |
c4. e,8([ g]) c8 | b4( a8) g4 a8 | d,8 e g e' d c |
}
\alternative {
{ g'4.~ g8 r r | R2. | \time 4/4 \key d \major r2 r4 r8.^"Sólo" fis,16 }
{ g'2.~ | g2.~ | g2.~ | g4. r4 r8 \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Jak roz -- vod -- ně -- ná Vol -- ha, když ta -- je led,
jak bouř -- li -- vý proud ob -- la -- ků,
tak moc -- ně se stal slav -- ný pro ce -- lý svět,
on, ve -- li -- ký vzor vo -- já -- ků. __
Zni, má pís -- ni o Čka -- lo -- vu,
a vy -- so -- ko leť nad ze -- mí, __
zni pro slá -- vu hr -- di -- no -- vu,
zni v~dneš -- ní krás -- né na -- še dni! __
Zni, má pís -- ni, ať náš lid nik -- dy ne -- za -- po -- mí -- ná __
tu slá -- vu, to jmé -- no, jež no -- sil pi -- lot hr -- di -- na! __
"2. On"
na! __
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
        \midi { \tempo 4=76 }
}
