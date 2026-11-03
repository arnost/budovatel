\version "2.24.0"
\header {
        title = "Zdravíme vítězství"
        composer = "Čínská bojová"
}

melody =  \relative c'' {
        \clef treble
        \time 2/4 \key a \major \tempo "Pevně" 4=100
b4 b8[( a]) | b2 | fis4 fis8[( a]) | b2 | e8[( d]) b4 | e8[( d]) b4 |
b4 b8[( fis]) | e2 | d8 e d e | fis4.( b8) | a8 fis a cis |
b2 | e2 | fis,2 | b8 b b fis | e4 r |
e4 e8[( fis]) | cis'8 cis b4 | e,4 e8[( fis]) | cis'8 cis b4 | e4 e |
e8 e e4 | e8 e e a, | b2 | e8[( fis e d]) | e8[( fis e d]) | e8[( fis e a,]) | b2 |
fis4 fis8[( e]) | d8[( e]) fis4 | e4. fis8 | e4( b') | a4. b8 | a4 fis |
fis8 e d[( fis]) | e2 |
e'4.( cis8) | b4 b | b8 a fis a | b4 r | a4 a8[( b]) | b4 e8[( a,]) | b4. cis8 |
b8[( cis]) b4 \bar "||"
\mark \markup { \italic "CODA" }
e4 e8[( cis]) | b8[( a b e]) | \grace { b16[( cis] } b2) \bar "|."
}

text = \lyricmode {
Su mi ku tcen tchen sja tcjé fan ta tin
koa tčan kja tcun fun tčuj ko ajn -- sen li ta han
fan é -- ché tčan an ťju ťje fan.
Tčan an ťju ťje an Tčan an ťju ťje an jou pa
fan tunk pchaj lanč jsen jsoum je kňan hé hé hé hé
ty ko tu jí šja pcho da cun kuo le mi tchin ci šun ha
hé che che ca mn či ko čan k san t šang ja he hé he
he he hé he.
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \new Voice { \melody }
        \midi { \tempo 4=100 }
}
