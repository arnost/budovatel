\version "2.24.0"
\header {
        title = "Pionýrská pochodová"
        composer = "M. Starokadomskij"
        poet = "S. Michalkov, český text L. Kundera"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Mírně rychle" 4=100
\partial 8 c8 |
c8 d e f | d8. c16 c8 c | d8 e f g | a4. f8 | g8 g a bes | d,8. d16 d8 bes' | a8 g f e | f4. a8 |
a8 g f e | f8. d16 d8 d' | c8 bes a g | a4. a8 | e8 g f e | f8. d16 d8 a' | g8 f e d | c8 r8 c'4^"Refrén" |
c4 a8 f | d4 e8 g | c,2 ~ | c8 r8 c'4 | c4 bes8 g | d4 e8 g | c,2 ~ | c8 r8 c'8[( cis]) |
d4 bes8 a | g4 a8 bes | c4 a8 g | f4 g8 a | d,4 e8 f | a4 g8 d | f2 ~ | f8 r8 r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Před ná -- mi ru -- dá plá hvě -- zda ta hvě -- zda pře -- šťa -- stná.
Na na -- šich vla -- cích z~dál -- ky už ka -- ždý ji ro -- ze -- zná.
Tak všu -- de na -- še mlá -- dí hned po hvě -- zdách po -- zna -- jí,
to mlá -- dí, o němž sou -- dru -- zi ko -- lem nás zpí -- va -- jí.
Zpí -- vá na všech ná -- dra -- žích, zní, zní k~nám z~va -- go -- nů sa -- mý smích,
dnes já -- sa -- vé pí -- sně, dnes ná -- dher -- né pí -- sně
vši -- chni zpí -- va -- jí ve vla -- cích.
}

accompaniment = \chordmode {
\partial 8 s8
f2 c c f g4:m c:7 g2:m c:7 f
a2:7 d4.:m bes8 c2:7 f c4:7 a:7 d2:m g:7 c4 c:7
f2 c:7 f4 d:m f2 g:m c:7 f4 d:m f2
bes2 c:7 f d:m g:7 c:7 f4 d:m f2
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
        \midi { \tempo 4=100 }
}
