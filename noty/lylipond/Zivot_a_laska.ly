\version "2.24.0"
\header {
        title = "Život a láska"
        composer = "Josef Stanislav"
        poet = "František Němec"
}

melody =  \relative c'' {
        \clef treble
        \time 2/2 \key g \major \tempo "Rázně" 2=72
b2 a8 g r4 | bes4 bes g r | b2 a8 r r g | bes4 bes g r |
\tuplet 3/2 { d4 e g } \tuplet 3/2 { a g a } | \tuplet 3/2 { b4 a b } d2 ~ | d4 c b a | b b g r |
\tuplet 3/2 { b4 a g } \tuplet 3/2 { b a g } | \tuplet 3/2 { bes4 a g } \tuplet 3/2 { bes a g } | d4 e a2 | b2 r |
r4 c bes c | d d g, r | r c bes c | d d g, r |
r4 g g2 ~ | g4 g \tuplet 3/2 { bes bes bes } | \tuplet 3/2 { aes4 aes bes } g2 | R1 |
\tuplet 3/2 { g4 f es } g4. es8 | g2 r | \tuplet 3/2 { g4 f es } g4. es8 | g2 r |
\tuplet 3/2 { g4 g g } \tuplet 3/2 { a g a } | b b d2 | g,2 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Když ži -- vot tvr -- dý jest, mů -- že, kdo mi -- lu -- je,
do vřa -- vy bi -- tev -- ní lá -- sky kus vnést, __ do -- bý -- vat ce -- lý svět.
Zda mů -- že po -- mys -- let na to, co v~po -- ho -- dě slu -- nci má kvést.
Kdo všem svůj ži -- vot dal a na boj pří -- sa -- hal,
jenž má __ všem sou -- dru -- hům svo -- bo -- du dát,
zda ko -- mu lás -- ky vstříc, než -- li jim nést smí víc,
ze všech víc jed -- no -- ho mů -- že mít rád.
}

accompaniment = \chordmode {
g1 | c:7 | g | c:7 |
g2 c | b1:m | b4:m a:m d2 | g1 |
g1 | g:m | b2:m d | g1 |
c1:m | g | c:m | g |
c1:m | c2:m bes | f:m g | g1 |
f1:7 | g | f:7 | g |
c1 | b2:m d | g1 |
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
        \midi { \tempo 2=72 }
}
