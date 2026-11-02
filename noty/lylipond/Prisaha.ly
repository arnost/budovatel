\version "2.24.0"
\header {
        title = "Přísaha"
        composer = "F. Říčka"
        poet = "F. Dobeš"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Volným pochodem" 4=104
\partial 4 c4 |
a4. g8 f4 g | a bes c f, |
bes4. c8 d4 c8 bes | a2. bes8 a | g4 g8[( a)] bes a g4 |
a4. f8 d4 bes' | a2 bes | a4 r r c |
a4. g8 f4 g | a bes c f, |
bes4. c8 d4 c8 bes | a2. r8 f | f4. f8 bes4 d |
c8 bes a bes c4 a | g g a b | c r r c, \bar "||"
f4 f8 g a4 g8 f | bes4 bes8 c d4 r8 d |
c4 c8 d c bes a g | f4 g a a |
d2 d | d d | d d4 d |
d2 d | e,2 g4 bes | a2 c4 bes | a a g a | d2. r4 \bar "|."
}

text = \lyricmode {
Jak krá -- sná je dnes na -- še ze -- mě,
kde si lid vlád -- ne sám, kde už hlad ne -- pro -- vá -- zí
ko -- řist -- ní -- ků zpup -- né lži,
kde stá -- le ví -- ce zdra -- vých dě -- tí
ži -- je je -- nom svým hrám, kde mi -- li -- o -- ny
pa -- ží v~prá -- ci pro vlast hr -- dě sou -- tě -- ží.
Pod na -- ši -- mi pra -- po -- ry pří -- sa -- há -- me,
ať vši -- chni na ce -- lém svě -- tě o nás ví:
My sí -- lu, lás -- ku, krev svo -- ji dá -- me
li -- du a pre -- si -- den -- tu Gott -- wal -- do -- vi.
}

textb = \lyricmode {
A kdy -- by jed -- nou hor -- da vra -- hů
štěs -- tí chtě -- la nám brát, dnes ať již před na -- ši -- mi
zbra -- ně -- mi se stra -- chem chví.
My od so -- vět -- ské ar -- má -- dy se
u -- čí -- me bo -- jo -- vat, se so -- vět -- ský -- mi
ar -- má -- da -- mi bu -- de na -- še ví -- těz -- ství.
}

accompaniment = \chordmode {
\partial 4 s4
f1 f
bes1 f g:m
d2.:m g4:m a2 g:m a2. f4
f1 f
bes1 f bes
f1 g:7 c:7
f1 bes
c1 f4 c f a
d1:7 g2:m d g1:m
d1:m g:m d2:m g:m d:m a:7 d1:m
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \set melismaBusyProperties = #'(slurMelismaBusy tieMelismaBusy) \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=104 }
}
