\version "2.24.0"
\header {
        title = "Píseň úderníků"
        composer = "František Šauer"
        poet = "H. G. Ivan"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=112
a4 d8. c16 a4 f8. g16 | a4 a a2 | g4 bes8. a16 g4 f | g2 c,4 r |
f4 e8. f16 a4 gis8. a16 | d4 c b! \parenthesize b |
b8. b16 c8 b ais4 b | e2. a,8. gis16 \bar "||"
\key d \major
a4 fis e d | fis4 fis2 a8 b | d8. d16 d8 b a8. a16 a8 fis |
e4 r r b'8. ais16 | b4 g fis e | b'4 b r cis8 d |
e8 e e cis a a a g | fis2. d'8. cis16 | d4 d, cis d |
cis'2 b4 a8 b | a4 g g d | fis4 r r fis8 f! |
e4 g b cis | d2 a4 d | e4. e8 d4 cis | d4 r r2 \bar "|."
}

text = \lyricmode {
Má hr -- di -- ny bit -- va ví -- těz -- ná,
má hr -- di -- ny i prá -- ce,
jdem vy -- tvo -- řit pro ni no -- vý čas, _
ten je pře -- ce v~ru -- kou nás!
Pí -- seň ú -- der -- ní -- ků hří -- má:
Smě -- le na -- stu -- puj -- te k~nám do na -- šich řad!
Je to pí -- seň svě -- ta, mí -- ru!
Všich -- ni u -- za -- vře -- me nad ním pa -- tro -- nát.
Sí -- ly na -- še, to je mlá -- dí,
kte -- ré sko -- čí o sto let,
v~sou -- tě -- ži a bu -- do -- vá -- ní:
Za lep -- ší no -- vý svět!
}

textB = \lyricmode {
Všech ú -- de -- rek ru -- ce sklou -- bí -- me
pro bla -- ho vla -- sti mí -- ru
a kdo by chtěl no -- vý řád nám brát, _
z~nás vy -- ro -- ste Sta -- lin -- grad!
}

textC = \lyricmode {
Dík ú -- no -- ru pev -- ně vpřed už jdem,
v~té ne -- roz -- bor -- né sí -- le
děl -- ní -- ků, rol -- ní -- ků vo -- já -- ků
s pre -- si -- den -- tem Gott -- wal -- dem!
}

accompaniment = \chordmode {
d1:m d:m g:m c2 c:7
f1 d:m e:7 a:7
d2 g d1 d a
e2:m b4:7 e:m e1:m a:7 d d
g1 g d2. b4:7
e2.:m a4:7 d1 g2 d4/a a:7 d1
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
          \new Lyrics \lyricsto "one" \textC
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
