\version "2.24.0"
\header {
        title = "Na brigádu"
        composer = "Alois Šebestík"
        poet = "O. Bárta"
}

% Ve dvou taktech, kde zpěv pauzíruje, je v tisku nad osnovou nástrojová fanfára (zde v horním hlasu bez textu).
melody = \relative c'' {
        \clef treble
        \time 2/4 \key g \major \tempo "Pochodem" 4=112
g8\mf d e fis | g4 a | b2 | g2 \breathe | a8 g fis e |
fis4 e |
<< { \voiceTwo d4 r | r2 } \new Voice \fixed c' { \voiceOne s4 \tuplet 3/2 { d'8 d' d' } | c'8 b a4 } >> \oneVoice |
g='8 d e fis | g4 a | b2 |
g2 \breathe | e8 c' b a | b4 a |
<< { \voiceTwo g4 r | r2 } \new Voice \fixed c' { \voiceOne s4 \tuplet 3/2 { g'8 g' g' } | f'!8 e' d'4 } >> \oneVoice |
\bar "||" \key c \major
c=''4.\f g8 |
e4 g | c a | g4. g8 \breathe | f4 a | g f |
e4. g8 | d4 d \breathe |
\repeat volta 2 {
e4 e | f g | a4. a8 | c2 \breathe |
c4 b | a b |
}
\alternative {
{ c4 e, | g r }
{ c4 b | c r }
}
\bar "|."
}

text = \lyricmode {
\set stanza = "1."
Slu -- ní -- čko nám hře -- je, svi -- tí
na hři -- ště i za -- hra -- du,
ko -- lem cest ať ro -- ste kvi -- tí,
už chy -- stá -- me bri -- gá -- du.
Vzhů -- ru, vzhů -- ru na bri -- gá -- du,
ni -- kdo ne -- chce zů -- stat vza -- du,
ka -- ždý z~nás by rád, tak rád,
chtěl už vel -- kým po -- má -- hat,
po -- má -- hat.
}

accompaniment = \chordmode {
g2 c4 c:m g2 g a:7
a2:7 d2 d:7 g2 c4 c:m g2
g2 a:m g4 d:7 g2 g:7
c2
c2 f c f a4:7 d:m
c2 g
\repeat volta 2 {
c4 c:7 f c f2 d
c2 g:7
}
\alternative {
{ c2 c }
{ c4 g:7 c2 }
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
        \midi { \tempo 4=112 }
}
