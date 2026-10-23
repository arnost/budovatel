\version "2.24.0"
\header {
        title = "Pochod havířů"
        composer = "Zbyněk Přecechtěl"
        poet = "Jan Šmolka"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key g \minor \tempo "Tempo di marcia" 4=112
g4 \tuplet 3/2 { f8. f16 f8 } es4 f | d d r2 |
g4 \tuplet 3/2 { f8. f16 f8 } es4 f | d2 r |
c'4 \tuplet 3/2 { bes8. bes16 bes8 } a4 bes | g g r2 |
c8 c bes8. bes16 a4 bes | a2 r |
g8 r \tuplet 3/2 { f8 f f } es4 f | d d r2 |
g4 \tuplet 3/2 { f8 f f } es4 f | d2 r |
c'4 \tuplet 3/2 { bes16 bes8. bes8 } a4 bes | g g r2 |
c8 c bes8. bes16 c4 cis | d2 r \bar "||"
\key g \major
\mark "Refrén"
d,2 e4 g | a e' r2 | d8 b4. g4 a | d,2 r |
d2 e4 g | a e' r2 | d4 r8 b g4 a | g2 r |
bes2. c4 | c bes r2 | r4 c bes aes | g r r2 |
a2. b4 | b a r2 | r4 b a g | fis g a r |
d,2 e4 g | a e' r2 | d8 b4. g4 a | d,2 r |
d2 e4 g | a e' r2 | d4 r8 b g4 a | g2 r \bar "|."
}

text = \lyricmode {
Jdou zá -- stu -- py v~stej -- ném kro -- ku,
všem ú -- smě -- vy zdo -- bí tvář,
jdou zá -- stu -- py v~stej -- ném kro -- ku,
s~pro -- le -- tá -- řem pro -- le -- tář.
My v~hlu -- bi -- nách u -- hlí rve -- me,
zde ka -- han je sva -- to -- zář,
svět ce -- lý my změ -- nit jde -- me,
s~pro -- le -- tá -- řem pro -- le -- tář.
Ha -- ví -- ři v~če -- le, ru -- dý pra -- por náš,
sou -- dru -- zi smě -- le jdou na prv -- ní stráž.
Lás -- kou zmá -- men zas bu -- de svět,
čer -- ný ká -- men a z~ru -- dé kr -- ve květ.
Ha -- ví -- ři v~če -- le, ru -- dý pra -- por náš,
pů -- jde -- me smě -- le vždy na před -- ní stráž.
}

accompaniment = \chordmode {
g4:m bes es bes g1:m g4:m bes es bes g1:m
c4:m es c:m es c1:m c4:m es c:m es d1
g4:m bes es bes g1:m g4:m bes es bes g1:m
c4:m es c:m es c1:m c4:m es c:m cis:dim d2 a4:m7 d:7
g2 e4:m g d1:7 g2 a:7 d1:7
g2 e4:m g d1:7 g2 a4:7 d:7 g1
bes2.:7 f4:m es1 bes2:7 f4:m bes:7 es1
a2.:7 e4:m d1:7 a4:7 e:m a2:7 d4:7 a:m7 d2:7
g2 e4:m g d1:7 g2 a:7 d1:7
g2 e4:m g d1:7 g2 a4:7 d:7 g1
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
