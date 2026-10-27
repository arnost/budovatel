\version "2.24.0"
\header {
        title = "Konjuh planinom"
        poet = "Miloš Popović Đurin"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key d \minor \tempo "Vážně, táhle" 4=69
a8 d4. d8 e | f2 f8 g | a f e4 d\fermata | d'8\fermata cis d bes4. |
\time 4/4 bes8 d c bes d a4. |
\time 3/4 c8 bes a4. d,8 | d[( f]) a2 | c8 bes a4. d,8 | d[( f]) a2 |
\time 4/4 g8 a bes a e g f cis |
\time 3/4 e4 d2\fermata \bar "|."
}

text = \lyricmode {
Kon -- juh pla -- ni -- nom vje -- tar šu -- mi, bru -- ji.
Liš -- če pje -- va ža -- lo -- vi -- te pjes -- me.
Bo -- ro -- vi i je -- le, ja -- vo -- ri i bre -- ze
svi -- ja -- ju se je -- dan uz dru -- go -- ga.
}

accompaniment = \chordmode {
d2.:m d2.:m d4:m a:7 d:m bes2.
g2:m d:m
f4 d2:m d2.:m f4 d2:m d2.:m
g2:m a:7
a4:7 d2:m
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
        \midi { \tempo 4=69 }
}
