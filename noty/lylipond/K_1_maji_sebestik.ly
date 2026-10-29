\version "2.24.0"
\header {
        title = "K 1. máji"
        composer = "Al. Šebestík"
        poet = "Z. Horal"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key a \major \tempo "Mírně rychle" 4=100
a16[ e fis e] cis'8 a | a e r4 | b'16[ a gis a] b8 gis | b4 r |
a16[ e fis e] cis'8 b | a fis r4 | e16[ fis gis e] d'8 b | a4 r \bar "||"
\key d \major
a8 a fis4 | a8 g fis g | a4. d8 | a2 \breathe |
a8 a fis4 | a8 g fis g | a4 b | cis2 \breathe |
cis8 cis cis4 | e8 d cis b | a4 b | fis2 |
g8 g g4 | b4 a8 g | a4 b8 cis | d4 r \bar "|."
}

text = \lyricmode {
Pod mra -- kem se slun -- ko smě -- je,
u -- li -- ce jsou sa -- mý květ.
Co -- pak se to u nás dě -- je?
Za -- zpí -- vá -- me mu to hned.
A -- by nám pra -- por mí -- ru stá -- le vlál,
a -- by se tá -- ta s~má -- mou šťa -- stně smál,
a -- by si dě -- ti mo -- hly kli -- dně hrát,
spo -- le -- čně pů -- jde -- me máj při -- ví -- tat.
}

accompaniment = \chordmode {
a2 a e:7 e:7
a2 d e:7 a4 a:7
d2 d d d
d2 d d4 b:m fis2
a2:7 d4 g d2 d
a2:7 a:7 d4 a:7 d2
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'() \melody }
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
