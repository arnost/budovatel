\version "2.24.0"
\header {
        title = "Tankistům"
        composer = "Radim Drejsl"
        poet = "Miroslav Kroh"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \tempo "Pevně, volným pochodem" 4=104
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy)
\repeat volta 3 {
\key as \major
es8. f16 es2 f4 | g8 as g2 as4 | bes8. as16 g8 as bes as des c | es1 |
f8 es4 des8 c4 bes | c des2 c4 | f, f e! f | g2 ~ g4 r \bar "||"
\key c \major
c2. g4 | a g2 e8 d | c4 f2 a4 | g r r a8 b |
c2 b4 a | g e g b | d2 b4 a | g r r2 |
c2. g4 | a g2 e8 d | c4 f a c | d2. c8 d |
es2 d4 c | e! c b a | \tuplet 3/2 { d,8 e f } g2 b4 | c2 ~ c8 r r4 |
}
}

text = \lyricmode {
\set stanza = "1."
Na -- še pá -- sy le -- tí srá -- zy, má -- me v~hru -- di srd -- ce sta -- teč -- ná,
z~kaž -- dé -- ho tan -- ku za -- hří -- má pí -- seň ví -- těz -- ná. __
Slá -- va tan -- kům, kte -- ré chrá -- ní náš lid, le -- tí kra -- jem jak o -- rli ne -- bem vpřed zví -- tě -- zit.
Slá -- va tan -- kům za no -- vé a šťa -- stné dny, ku -- pře -- du na nich vy -- ra -- zí -- me
na po -- chod ví -- těz -- ný. __
}

accompaniment = \chordmode {
\repeat volta 3 {
as1 c as as des c:7 f:m g:7
c1 g:7 f c b e:m d:7 g:7
c1 g:7 f f fis:dim g/d d4:m g2.:7 c1
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
        \midi { \tempo 4=104 }
}
