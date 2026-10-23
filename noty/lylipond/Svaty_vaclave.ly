\version "2.24.0"
\header {
        title = "Svatý Václave"
}

melody = \relative c'' {
        \clef treble
        \key c \major
        \omit Staff.TimeSignature
        \cadenzaOn
a2( b) g c b( g) a \bar "|"
a( b) g c \bar ""
b a f e \bar "|"
d f g \bar "|"
f e e d g \bar "|"
f e e d g \bar "|"
f e d d( c) d \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Sva -- tý Vá -- cla -- ve,
vé -- vo -- do čes -- ké ze -- mě,
knie -- že náš,
pros za ny bo -- ha,
sva -- té -- ho du -- cha,
Kris -- te -- le -- i -- son.
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
        \midi { \tempo 2=60 }
}
