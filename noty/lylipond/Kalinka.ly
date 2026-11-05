\version "2.24.0"
\header {
        title = "Kalinka"
        composer = "Ivan Larionov"
        poet = "Ivan Larionov, český text Josef Urban"
}

melody = \fixed c' {
        \clef treble
        \time 2/4 \key g \minor \tempo 4=96
\set melismaBusyProperties = #'()
r8 d'4\fermata \bar ";" \mark \markup { \musicglyph "scripts.segno" } d'8\fermata |
\repeat volta 2 {
  c'4 a8 bes8 | c'4 a8 bes8 | c'4 bes8 a8 | g4 d'8 d'8 |
  c'8. bes16 a8 bes8 | c'4 a8 bes8 | c'4 bes8 a8 | g8 d'4 d'8 |
  c'4 a8 bes8 | c'4 a8 bes8 | c'4 bes8 a8 | g4 d'8 d'8 |
  c'8. bes16 a8 bes8 | c'4 a8 bes8 | c'4 bes8 a8 |
}
\alternative {
  { g8 d'4 d'8 }
  { << { \voiceTwo g8 r8 r4 | R2 }
       \new Voice { \voiceOne f'2\fermata ^\markup { "Ech!" } ~ f'2\fermata } >> \oneVoice }
}
\bar "||"
d'8 ( f'8 ) es'8 ( d'16 c'16 ) | bes4 f4 | d'8 ( f'8 ) es'8 ( d'16 c'16 ) | bes4 f4 |
g4 g8 a8 | c'8 ( bes8 ) a8 ( g8 ) | f4 f4 |
<< { \voiceTwo f4 r4 | d'8 ( f'8 ) c'8 ( d'8 ) | bes4 ( f4 ) | d'8 ( f'8 ) c'8 ( d'8 ) | bes4 ( f4 ) }
   \new Voice { \voiceOne s4 f'4\fermata ^\markup { "Ech!" } ~ | f'2 ~ | f'2 ~ | f'2 ~ | f'2 } >> \oneVoice
g4 g8 a8 | c'8 ( bes8 ) a8 ( g8 ) | f'4 \tuplet 3/2 { es'8 f'8 es'8 } | d'2 ~ | d'4\fermata r8
\mark \markup { \musicglyph "scripts.segno" }
\bar "|."
}

text = \lyricmode {
Ech! Ka --
lin -- ko, ka -- lin -- ko, ka -- lin -- ko ty má, v~sa -- du
ja -- ho -- do, ma -- lin -- ko, ma -- lin -- ko ty má. Ech! Ka --
lin -- ko, ka -- lin -- ko, ka -- lin -- ko ty má, v~sa -- du
ja -- ho -- do, ma -- lin -- ko, ma -- lin -- ko ty
má! Ech! Ka -- má!
V~le _ sů _ _ klí -- nu, v~so _ sen _ _ stí -- nu,
tam chtěl bych slad _ -- ce, _ ti -- še spát!
Oj, _ lju -- li, lju -- li, Oj, _ lju _ _ -- li,
tam chtěl bych slad _ -- ce, _ ti -- še _ _ spát!
}

accompaniment = \chordmode {
s8 d4:7 g8:m |
\repeat volta 2 {
  d2:7 | d:7 | d:7 | g:m | d:7 | d:7 | d:7 | g:m |
  d2:7 | d:7 | d:7 | g:m | d:7 | d:7 | d:7 |
}
\alternative {
  { g2:m }
  { g2:m | f2 }
}
bes4 f | bes2 | bes4 f | bes2 |
es2 | c | f | f |
bes4 f | bes2 | bes4 f | bes2 |
es2 | es | c:m | d | d4.
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
        \midi { \tempo 4=96 }
}
