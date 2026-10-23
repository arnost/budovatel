\version "2.24.0"
\header {
        title = "Pozdrav Sovětům"
        composer = "Jan Kapr"
        poet = "Miloslav Zachata"
}

melody =  \relative c' {
        \clef treble
        \time 3/4 \key g \major \tempo "Valčíkovým pohybem" 4=160
R2.*4 |
\repeat volta 2 {
d4 g4. b8 | fis4 fis2 | e4 a4. c8 | g4 g2 |
fis4 a d | c4. b8 a4 | c4 b( a) | d2 r4 |
d,4 g4. b8 | fis4 fis2 | e4 a4. c8 | g4 g2 |
fis4 a c | e4. d8 c4 | b2 a4 | g2. \bar "||"
\key es \major
\tempo "O něco klidněji, pevně"
g4^"Refrén" g4. c,8 | c'4. bes8 as4 | g4 c es | d4 bes2 |
r4 es,4 f8 g8 | as4. bes8 as8 g8 | f4. as8 c4 | bes4 g4 r4 |
g4 g4. c,8 | c'4. bes8 as4 | g4 bes c | d2 c8 d8 |
es4. c8 bes4 | c4-> d-> es-> | f2->( es4) |
}
\alternative {
{ es2.-> | R2.*4 }
{ es2.-> \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Ti -- sí -- ce kvě -- tů, ti -- sí -- ce o -- čí
o -- sla -- ví přá -- tel -- stvím slav -- ný máj,
ce -- lá zem na -- še se v~tan -- ci to -- čí,
gar -- moš -- ka do ko -- la vy -- hrá -- vá.
Zpí -- vá -- me přá -- tel -- ství ra -- dost -- nou pra -- cí
a poz -- drav náš je ja -- ko bě -- lost -- ní ptá -- ci,
k~slun -- ci se náš poz -- drav roz -- lé -- tá -- vá.
Slá -- va Sta -- li -- nu, So -- vě -- tům slá -- va!
va!
}

accompaniment =\chordmode {
s2.*4
\repeat volta 2 {
g2. b:7 a4:m a4.:m as8 cis2.:dim7
d4 d2:7 a2.:m d:7 g
g2. b:7 a4:m a4.:m as8 cis2.:dim7
d2. a:m d2 d4:7 g2.:7
c2.:m as c:m g:m
es2. as bes:7 es
c2.:m7 as c:m g
c2.:m f:m bes:7
}
\alternative {
{ es2. s2.*4 }
{ es2. }
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
        \midi { \tempo 4=160 }
}
