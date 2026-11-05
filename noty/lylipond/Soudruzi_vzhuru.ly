\version "2.24.0"
\header {
        title = "Soudruzi, vzhůru!"
        subtitle = "Pochod rumunské mládeže"
        composer = "Sergin Niculescu"
        poet = "Nina Cassian a C. Sârbu, český text Aug. Vondřich"
}

melody = \fixed c' {
        \clef treble
        \time 4/4 \key d \major \tempo "Úderně" 4=112
d4 d8. a,16 d4 e4 | fis4 e8. d16 e2 | e4 e8. b,16 e4 fis4 |
g4 fis8. e16 fis2 | a4 a8. a16 a8 g8 fis8 e8 | fis8. e16 fis8 g8 a8 r8 a4 |
b4 d'4 cis'8 b8 a8. gis16 | a2 ~ a8 r16 a,16 d8. fis16 \bar "||"
a4^\markup { \italic "Refrén" } a4 g4 fis8. e16 | fis4 d4 r8 a,8 d8 fis8 | a4 a4 b4 a8 b8 |
cis'2. a4 | d'4 cis'4 b8 a8 g8 fis8 | e4. ( fis8 ) g8 r8 b4 |
a4 g8. fis16 g4 fis8. e16 | a2. a4 | d'4 cis'4 b8 a8 g8. fis16 |
e4. ( fis8 ) g8 r8 b4 | a4 fis4 a8. g16 fis8. e16 | d2. r4 \bar "|."
}

text = \lyricmode {
Sou -- dru -- zi, vzhů -- ru, na -- de -- šel čas,
to -- vár -- ní ha -- ly vo -- la -- jí nás,
chcem všich -- ni pev -- ným kro -- kem no -- vou ce -- stou jít,
chcem krá -- sné mlá -- dí vy -- tvo -- řit.
Jen stá -- le vpřed, na rtech pí -- seň mlá -- dí,
jen stá -- le s~ú -- smě -- vem dál a vpřed!
Svůj ži -- vot prav -- dě za -- svě -- tí -- me,
z~ní rů -- ží ru -- dý vzej -- de květ,
svůj ži -- vot prav -- dě za -- svě -- tí -- me
a pra -- cí pře -- dě -- lá -- me svět.
}

textB = \lyricmode {
Sou -- dru -- zi, vzhů -- ru, na -- de -- šel čas,
zdvih -- ně -- te pěs -- ti, zdvih -- ně -- te hlas
za u -- dr -- že -- ní mí -- ru jdem se svor -- ně bít,
chcem v~mí -- ru bu -- do -- vat i žít!
}

accompaniment = \chordmode {
d1 | d2 a:7 | e1:m | a2:7 d | d1 | b1:7 | e2:m e:7 | a1 |
d2 a:7 | d1 | d2 g | fis2. a4:7 | b1:m | e1:m |
e2:m a:7 | d1 | b1:m | e1:m | d2 a:7 | d1 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=112 }
}
