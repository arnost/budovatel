\version "2.24.0"
\header {
        title = "Velký svátek"
        composer = "Rudolf Kubín"
        poet = "Josef Sýkora"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key d \major \tempo "Slavnostně" 4=88
R2*8 \bar "||"
\mark \markup { \musicglyph "scripts.segno" }
\tempo "Tempo I."
\repeat volta 2 {
d4 fis8 d8 | a'4 g | fis d | r2 |
fis4 e8 fis8 | a4 g | fis4. r8 | r2 |
g4 b8 g8 | b4 c | d a ~ ( | a8 e ) d e |
fis4 fis | a fis | e r | r2 |
e4 b8 e8 | g4 fis | e b | r2 |
g'4 e8 g8 | b4 a | g4. r8 | r2 |
g4 b8 g8 | b4 c | d a | d,8 cis d e |
fis2 | e | a | r2 |
g4 b8 g8 | b4 c | d a | d,8 cis d e |
}
\alternative {
{ fis2^"dál" | e | d | r2 }
{ fis2^"Konec" | a | d | r2^\markup { \bold "Fine" } \bar "||" }
}
\tempo "Živěji"
cis,4 cis8 cis | fis4 fis | gis cis, | a'4 r4 |
cis,8 r8 cis cis | gis'4 cis, | a'4 fis | r2 |
e4 e8 e | a4 a | b e, | cis'4 r4 |
\tempo "Volněji"
a8-> a-> a4-> | d4-> e,-> | cis'4-> a-> | r2 \bar "||"
\mark \markup { \small "D.S. al Fine" }
}

text = \lyricmode {
\set stanza = "1."
Má ze -- mě sla -- ví svá -- tek, já ví -- tám vel -- ký den,
dnes na ti -- sí -- ce ru -- kou __ dá -- vá kvě -- ty do o -- ken,
pak roz -- le -- tí se pís -- ně na po -- čest ví -- těz -- ství,
má ze -- mě sla -- ví svá -- tek ve -- li -- ké -- ho přá -- tel -- ství!
má ze -- mě sla -- ví svá -- tek ve -- li -- ké -- ho
přá -- tel -- ství!
přá -- tel -- ství!
Jak pev -- ný je náš ru -- ky stisk, tak pev -- nou má -- me ví -- ru,
my půj -- dem vpřed vždy po bo -- ku so -- vět -- ských bo -- ha -- tý -- rů.
}

accompaniment =\chordmode {
s2*4 d2 a d d
\repeat volta 2 {
d2 a d e4 es:7
d2 a b b
b2 g4 g:m d2 d d d4 e a2 a:m
e2:m b:7 e:m e:m
e2:m b e:m a
e2:m g4 g:m d a:7 d2
d2 a d4 d:dim a:m a
e2:m g4 g:m d a:7 d4. a8:7
}
\alternative {
{ d2 a d d }
{ d2 a d d }
}
fis2:m fis cis fis:m
fis2:m cis fis:m fis:m
a2 a e:7 a
a2 e a a
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
        \midi { \tempo 4=88 }
}
