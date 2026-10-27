\version "2.24.0"
\header {
        title = "Crvena zvjezda"
        poet = "Vladimir Nazor"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key g \major \tempo "Živě" 4=132
e4. b8 e4 fis | g g fis e |
a8 a a b c4 d | b2 b \bar ".|:-||"
\repeat volta 2 {
e4. e8 d4 c | b c b a | g4. b,8 g'4 a |
}
\alternative {
{ e1 }
{ e'1 }
}
\bar "|."
}

text = \lyricmode {
S~Do -- na, s~Vol -- ge i s~U -- ra -- la
vi -- so -- ko je za -- trep -- ta -- la
pa na na -- še ka -- pe pa -- la
zvjez -- da cr -- ve -- na. na.
}

% Akordy v závorce a v lomítkách jsou v tisku alternativní; zobrazují se, ale v MIDI hraje hlavní akord.
accompaniment = \chordmode {
s1*2 a1:m b1
\repeat volta 2 {
\once \override ChordName.text = \markup "Am (C)" a2:m
\once \override ChordName.text = \markup "/D/" a2:m
\once \override ChordName.text = \markup "Em /G/" e2:m
b2:7
c2. b4
}
\alternative {
{ e1:m }
{ e1:m }
}
}

\score {
        <<
          \new ChordNames \accompaniment
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
        \midi { \tempo 4=132 }
}
