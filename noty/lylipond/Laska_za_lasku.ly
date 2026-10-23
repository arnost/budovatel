\version "2.24.0"
\header {
        title = "Láska za lásku"
        composer = "Ludvík Podéšť"
        poet = "Stanislav Zvoníček"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \major \tempo 4=100
R1 |
\repeat volta 3 {
fis4 g8 a8 d,4 d | b8 b' a g fis4 e |
fis4 g8 a8 d,4 d | cis8 b' a g fis4 r4 |
fis4 d8 fis8 b4 b | a8 g fis g fis4 fis |
fis4 d8 fis8 b4 b | b8 a g b e,2 |
fis8 g a4 d,8 d4. | b8 b' a g fis4 e |
fis4 g8 a8 d,4 d | cis8 b' a g fis4 r4 |
g4 e8 g8 b4 b | a8 g fis g fis4 fis |
g4 e8 g8 b4 b | b8 a b g a4 r4 \bar "||"
\key g \major
b4 b8 a g4 d | b'4 b8 a g4 e | d8 d4 d8 d' d4. | d8 d4 c8 b4 g |
e8 e4 fis8 g4 a | b8 a g a b2 |
e,4 e e8 e fis gis | a8 e a c b4. e,8 |
c'8 c c c c( b) a e | d4 a'2( ais4) |
b4 b8 a g4 d | b'4 b8 a g4 e | d8 d d d d' d d d | d8. c16 b8. a16 g2 ~ |
\alternative {
\volta 1,2 { g8 r8 r4 r2 }
\volta 3 { g8\repeatTie r8 r4 r2 \bar "|." }
}
}
}

text = \lyricmode {
\set stanza = "1."
Má -- jo -- vé slun -- ce zla -- ti -- lo mou ze -- mí,
vo -- ně -- ly jar -- ní kvě -- ty ze za -- hrad,
to byl ten máj, ten slav -- ný me -- zi vše -- mi,
kdy prv -- ně sly -- šel gar -- moš -- ku jsem hrát.
Bo -- ha -- týr ru -- dý roz -- ra -- zil o -- ko -- vy,
po -- moh' mi vra -- hy, žhá -- ře vy -- há -- nět,
nad tros -- kou měst a spá -- le -- ný -- mi kro -- vy
já za -- čal sta -- vět no -- vý, lep -- ší svět.
Za věr -- nost věr -- nost, lás -- ka za lás -- ku __
ne -- ní v~mých ře -- kách to -- lik o -- bláz -- ků,
ko -- lik slov dí -- ků ot -- či -- na zpí -- vá.
Kaž -- dé slo -- vo pří -- sa -- hou zní ve ves -- mír
a s~pí -- sní bra -- tří so -- vět -- ských splý -- vá. __
Za věr -- nost věr -- nost, lás -- ka za lás -- ku
pod pra -- po -- rem Sta -- li -- na je ví -- těz -- ství a mír! __
}

accompaniment =\chordmode {
s1
\repeat volta 3 {
d2. d4:7 g2 a d1 e2:m fis4 fis:7
b2.:m g4 e2:m fis4 fis:7 b1:m e2:m a
d1 g2 a d1 a2 b4 b:7
e1:m a2 b4 b:7 e1:m a2:m d:7
g1 b2 e:m d2. d4:7 g1
c2. a4:m d4 d:7 b2 e1 a2:m e:7
a1:m d g b2 e:m d1 d2 g
\alternative {
\volta 1,2 { g1 }
\volta 3 { g1 }
}
}
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
        \midi { \tempo 4=100 }
}
