\version "2.24.0"
\header {
        title = "Píseň o Vorošilovi"
        composer = "A. V. Alexandrov"
        poet = "O. Kolyčev, český text Josef Urban"
}

% melodie (hlas s textem)
melA = \relative c'' {
r4 \bar ".|:" bes4^\markup \small \italic "zesilovat a zrychlovat až do konce" bes bes f | bes c d c8[( bes]) | a4 a a f | a bes c bes8[( a]) |
g2. a4 | bes2 a4( g) | d'2 d | d2 \voiceTwo r2 |
}
melB = \relative c'' {
\voiceTwo d4 d d c | d es f es8[( d]) | c4 c c a | c \oneVoice d es d8[( c]) |
g'2. f4 | d2 c4( bes) | f'2 f |
}
altI = \relative c'' { f4( g f es) }
altII = \relative c'' { f2 r2 }
altIII = \relative c'' { f2\fermata r4^\markup \bold \italic "Fine" \bar "|." }

% zvolání „Ech!“ nad melodií
echA = \relative c'' { s4 s1*7 | s2 \voiceOne f?2~ | }
echB = \relative c'' { \voiceOne f1~ | f2. f8[( g] | f1~ | f4) s2. | s1*3 | }

chA = \chordmode { s4 bes1 bes f f g:m c:m d2 g:m d1 }
chB = \chordmode { bes1 bes f:7 f2:7 d:7 g2.:m f4:7 bes1 f2 bes }

global = { \clef treble \time 4/4 \key bes \major \tempo "Tiše a zdlouhavě" 4=76 \partial 4 }

melody = { \global \melA \repeat volta 3 \melB \alternative { \altI \altII \altIII } }
descant = { \global \echA \repeat volta 3 \echB \alternative { { s1 } { s1 } { s2. } } }

text = \lyricmode {
Vlak za vla -- kem již se ši -- ne,
vlak za vla -- kem již se ši -- ne,
v~dál -- ku pout nám na -- stá -- vá.
Mar -- šál roz -- kaz dal, to sta -- čí,
je -- ště zpát -- ky zrak se stá -- čí,
šá -- tek Do -- nu za -- má -- vá. vá. vá.
}

echText = \lyricmode { Ech! Ech! }

accompaniment = \chordmode { \partial 4 \chA \repeat volta 3 \chB \alternative { { f1 } { f1 } { f2 s4 } } }

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" <<
            \new Voice = "one" { \autoBeamOff \melody }
            \new Voice = "ech" { \autoBeamOff \descant }
          >>
          \new Lyrics \with { alignAboveContext = "mel" } \lyricsto "ech" \echText
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

% MIDI: jedna sloka (druhá polovina dvakrát) a závěr
\score {
        <<
          \new ChordNames { \partial 4 \chA \chB f1 \chB f2 s4 }
          \new Voice { \global \melA \melB \altI \melB \altIII }
          \new Voice { \global \echA \echB s1 \echB s2. }
        >>
        \midi { \tempo 4=76 }
}
