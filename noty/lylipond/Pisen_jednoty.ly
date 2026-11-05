\version "2.24.0"
\header {
        title = "Píseň jednoty"
        composer = "Alfred Gradstein"
        poet = "Stanisław Wygodzki, český text Erich Sojka"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key a \minor \tempo "Pochodem" 4=112
a4 f8. g16 a4 a | d d8. d16 a4 a |
a4 a8. b16 c4. b8 | a8[( b]) c8. d16 e4 e |
e4 d8. e16 f4 f | g,8[( b]) d8. f16 f4 e |
e4 c8. a16 e'4 b | b fis8. a16 gis8[( a]) b4 \bar "||"
\key a \major \mark \markup { \italic Refrén }
a4 a8. a16 cis4 cis | b d8. cis16 b4. a8 |
gis4 gis8. a16 b4 b | a8[( b]) cis8. b16 a4. gis8 |
fis4 fis8. fis16 fis'4. e8 | d8[( e]) d8. cis16 b4 a |
e4( a8.) cis16 e4 cis \bar "||" \time 3/2 b8[( cis]) e8. d16 cis2. b4 \bar "||"
\time 4/4 e,4 a8. b16 cis4 cis | b8[( cis]) d8. e16 fis4( e) |
cis4( a8.) cis16 e4 cis \bar "||" \time 3/2 b8[( cis]) d8. cis16 b2 a4 r \bar "|."
}

text = \lyricmode {
Jed -- na je ce -- sta, je -- den je pra -- por,
kte -- rý nám dá -- vá ví __ _ těz -- ství v~bo -- ji.
S~ním od -- ra -- zí -- me ne __ _ přá -- tel ná -- por,
s~ním tří -- da na -- še na strá -- ži sto __ _ jí.
Z~jed -- no -- ty na -- ší mír věč -- ný vzklí -- čí,
jed -- no -- ta na -- še vše __ _ špat -- né zni -- čí,
jed -- no -- ta na -- še zá __ _ ru -- ka stá -- tu,
jed -- no -- ta sí -- la pro __ _ le -- ta -- riá -- tu.
Jed -- no -- ta na -- še zá __ _ ru -- ka stá -- tu,
jed -- no -- ta sí -- la pro __ _ le -- ta -- riá -- tu!
}

accompaniment = \chordmode {
a2:m a2:7 d2:m f2
a2:m d2:m b2:7 e2
a2:m d2:m g2.:7 c4
a2:m d2:m b2:7 e2:7
a1 e2:7 a2
e1:7 a2 a4. a8:7
d2 e2:7 e2.:7 a4
a2 fis2:m b2:m e1:7
a2 fis2:m b2:m e4:7 a4
a2 fis2:7 b2:m e2:7 a2
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
        \midi { \tempo 4=112 }
}
