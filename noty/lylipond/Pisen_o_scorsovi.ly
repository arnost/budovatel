\version "2.24.0"
\header {
        title = "Píseň o Ščorsovi"
        composer = "Matvej Blantěr"
        poet = "Michail Golodnyj, český text L. Kubišta"
}

global = { \clef treble \time 2/2 \key e \minor \tempo "Živě" 2=96 }

% horní hlas (do 8. taktu jediný hlas)
upper = \relative c'' {
\repeat volta 4 {
\oneVoice
g4 e b' a8[( g]) | a2 e4 b'8[( a]) | g4 e b' a8[( g]) | a1 |
c4 c c b8[( a]) | d2 e4 e | b b a8[( b]) a4 | e1 |
\voiceOne
e'2( d | c1) | b2( cis | d e4 d) | c2.( d8[ c] | d2 c4 b8[ a] | b4 b a8[ b]) a4 | e'1 |
e1( | d2 c) | b4 b a8[( b]) a4 |
}
\alternative {
\volta 1,2,3 { e'1 }
\volta 4 { e2~ e4 r4 \bar "|." }
}
}

% spodní hlas (od 9. taktu)
lower = \relative c'' {
\repeat volta 4 {
s1*8 |
\voiceTwo
g4 e b' a8[( g]) | a2 e4 b'8[( a]) | g4 e b' a8[( g]) | a1 |
c4 c c b8[( a]) | d2 e4 e | a,2 a | e1 |
c'1( | b2 a) | g4 g fis8[( g]) fis4 |
}
\alternative {
\volta 1,2,3 { e1 }
\volta 4 { e2~ e4 s4 }
}
}

% cesta melodie pro podložení textu
rhythm = \relative c'' {
\repeat volta 4 {
g4 e b' a8( g) | a2 e4 b'8( a) | g4 e b' a8( g) | a1 |
c4 c c b8( a) | d2 e4 e | b b a8( b) a4 | e1 |
g4 e b' a8( g) | a2 e4 b'8( a) | g4 e b' a8( g) | a1 |
c4 c c b8( a) | d2 e4 e | b b a8( b) a4 | e1 |
e'1( | d2 c) | b4 b a8( b) a4 |
}
\alternative {
\volta 1,2,3 { e1 }
\volta 4 { e2~ e4 r4 }
}
}

text = \lyricmode {
Po -- dle ře -- ky šel od -- díl,
z~vel -- ké dál -- ky šel.
Šel pod ru -- dým pra -- po -- rem
plu -- ku ve -- li -- tel.
O -- vá -- za -- nou měl hla -- vu,
ru -- káv od kr -- ve,
za ním kr -- va -- vá sto -- pa
na mok -- ré trá -- vě.
Hej na mok -- ré trá -- vě. tá.
}

accompaniment = \chordmode {
\repeat volta 4 {
e1:m a:m e:m d:7
d:7 g2 c e:m b:7 e1:m
e1:m a:m e:m d
a:m e2:7 a:m e:m a:m e1:m
a1:m a:m e2:m a:m
}
\alternative {
\volta 1,2,3 { e1:m }
\volta 4 { e2.:m s4 }
}
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" <<
            \new Voice = "up" { \global \autoBeamOff \upper }
            \new Voice = "down" { \global \autoBeamOff \lower }
            \new NullVoice = "one" { \global \rhythm }
          >>
          \new Lyrics \lyricsto "one" \text
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \global \upper }
          \new Voice { \global \lower }
        >>
        \midi { \tempo 2=96 }
}
