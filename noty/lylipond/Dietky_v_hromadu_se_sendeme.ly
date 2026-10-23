\version "2.24.0"
\header {
        title = "Dietky, v hromadu se senděme"
}

melody = \relative c' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
f2 g g4 a2 c c4 a2\fermata g4 f2 \bar "|"
g2 f e4 d e2 f\fermata \bar "|"
a2 c c4 d2 c f4 e2\fermata c \bar "" a\fermata a4 g2 g4 bes2 bes4 a2\fermata \bar "|"
c4 c c a a a c c c \bar "" f,2 f4 f2 e4 d e2 f1\fermata \bar "||"
f'4 f f g g g f e d c2 \bar "|"
d4 d f e e \bar ""
d c c b a2 \bar "|"
a4 a a g g g a2 a4 bes2 \bar "|"
bes!4 a2 a4 a g2 f1\fermata \bar "||"
c'4 c c a a \bar ""
a c c c f,2 f4 f2 e4 d e2 f1\fermata \bar "|." \break
g2^"Dozpěv" d c4 d e2 f1\fermata \bar "|."
}

text = \lyricmode {
Diet -- ky v~hro -- ma -- du se sen -- dě -- me,
pro -- ti bra -- tří poď -- me,
pří -- kla -- dem Mel -- chi -- se -- de -- cho -- vým
chléb a ví -- no nes -- me!
Po ne -- přá -- tel -- ském sví -- tě -- ze -- ní
již bra -- tří při -- ví -- taj -- mež!
Da -- vid když po -- ra -- zil Go -- li -- á -- še,
k~Je -- ru -- za -- le -- mu se vra -- co -- vá -- še,
z~měst mno -- hých pro -- ti ně -- mu vy -- šli,
sla -- vně při -- ví -- ta -- li.
Po ne -- přá -- tel -- ském sví -- tě -- ze -- ní
ví -- taj -- te, bra -- třie mi -- lí!
Již spo -- lu ví -- taj -- te!
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm ragged-last = ##t }
}

\score {
        \new Voice { \melody }
        \midi { \tempo 2=60 }
}
