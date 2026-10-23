\version "2.24.0"
\header {
        title = "Festivalová"
        composer = "Václav Dobiáš"
        poet = "Pavel Kohout"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key d \major \tempo "Radostně" 4=112
\repeat volta 2 {
r4 d-> d-> d-> | bes2-> bes | a g | a4 a2. |
r4 d d d | bes2-> bes-> | a-> g-> | a-> r2 |
e8. a16 a2 b8 a8 | fis4 d e fis | g8. a16 b4 d b |
a8. fis16 a2 r4 | b4. a8 a4 fis8 e8 | d4 e fis b |
a8. gis16 fis4 gis cis | cis8. ais16 cis2. | r4 fis, d' d |
cis4. b8 fis4 gis | a( b) cis2 ~ | cis8 r8 a4 gis fis |
b4 b b2 ~ | b8 r8 gis4 a b | cis2( e) | e2. r4 |
a,8.-> a16 a2 b8 a8 | fis4 d e fis | g8. a16 b4 d b |
a8. fis16 a2 r4 | b4. a8 a4 fis8 e8 | d4 e fis d |
b'8. b16 b4 cis a | d8. d16 d2. ~ | d4 r r2 |
}
b4 b b2 | cis2 a | d4 d d2 ~ | d2. r4 | d2 cis | d1\fermata \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Mír ne -- lze svá -- zat do vě -- ze -- ní,
mír vše -- cky mří -- že roz -- bi -- je.
Mí -- ro -- vá fron -- ta v~ma -- pách ne -- ní,
ta v~kaž -- dém lid -- ském srd -- ci je.
Mí -- ro -- vá fron -- ta v~ma -- pách ne -- ní,
ta v~kaž -- dém lid -- ském srd -- ci je.
Mla -- dý mi ú -- sty ze -- mě zdra -- ví __
fe -- sti -- val ná -- dě -- je, __ fe -- sti -- val slá -- vy.
Mí -- ro -- vá fron -- ta v~ma -- pách ne -- ní,
ta v~kaž -- dém lid -- ském srd -- ci je.
Mí -- ro -- vá fron -- ta v~ma -- pách ne -- ní,
ta v~kaž -- dém lid -- ském srd -- ci je. __
Mí -- ro -- vá fron -- ta zví -- tě -- zí! __ Zví -- tě -- zí!
}

accompaniment =\chordmode {
\repeat volta 2 {
d1 g:m g:m d:m
d1:m g:m g:m d
a1:7 d g d a:7 b:m fis2:m cis fis1 b:m
e1:7 a a e e a2 e a1
a1:7 d g d a:7 d g2 a d1 d
}
g1 a d d d2 fis:m d1
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
        \midi { \tempo 4=112 }
}
