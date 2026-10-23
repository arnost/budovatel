\version "2.24.0"
\header {
        title = "Píseň o rudém tisku"
        composer = "Josef Stanislav"
        poet = "František Němec"
}

melody =  \relative c' {
        \clef treble
        \time 2/2 \key f \minor \tempo "Rázně, úderně" 2=60
f8 f r4 as8 as g4 | f8 g es2 c4 | f8 f f2 es8 es | c4. es8 f2 |
bes4 bes2 as8 g | f4 es8 es f4 g8 g | as4 g f8 g as bes | c2. r4 \bar "||"
\key f \major \tempo "Vesele"
f,4 a8 g f4 c | d e f g | a c8 b a4 e | a b c r |
c4. d8 c4 bes | a g f d | c f8 g a4 g | a8 a c2 d8 c | f,2. r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Po -- kuď v~o -- ko -- vech ka -- pi -- tá -- lu je -- di -- ný bu -- de ú -- pět z~nás,
ne -- smí us -- tat boj na vte -- ři -- nu a zmlk -- nout vo -- la -- jí -- cí hlas!
Zpí -- vej -- te pís -- ně do po -- cho -- du, v~o -- ko -- vech nes -- mí ni -- kdo shnít!
S~ná -- mi na stráž do všech bi -- tev náš ru -- dý tisk jde vždy se bít, vždy se bít.
}

textb = \lyricmode {
\set stanza = "2."
Jde -- me za no -- vou krás -- něj -- ší zem za svůj chléb, svo -- bo -- du se bít.
Sví -- rá -- me vždy pev -- ně v~tom bo -- ji svůj ru -- dý tisk co dob -- rý štít!
Ne -- stůj -- te stra -- nou, ka -- ma -- rá -- di, vzhů -- ru jdem v~boj za lep -- ší svět!
Jed -- no -- tu tisk ru -- dý ku -- je, jež bu -- de kon -- cem na -- šich běd, na -- šich běd.
}

accompaniment = \chordmode {
s1 | s2. c4:m | des2. es4 | es1 | c2:7 des4 es | bes4:m es as es | as2 bes:m | c1 |
f2. a4:m | bes2 f4 c | f2 a:m | e4:7 a:m c2:7 | d2:m c | bes d:m | f2. c4:7 | bes4 c:7 d:m bes | f1 |
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
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 2=60 }
}
