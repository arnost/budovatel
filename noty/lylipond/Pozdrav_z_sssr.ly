\version "2.24.0"
\header {
        title = "Pozdrav z SSSR"
        composer = "Josef Stanislav"
        poet = "L. Führenberg"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Rázně" 4=108
\partial 4 c4 |
f8 f f4 f8 f r4 | g8 d g4 f r8 a | g g g g f4 d8 f | g2 d4 r |
g8 g g a bes4 a8 g | c2 r4 c | c8 c a r f f a r | c2 c,4 g' |
g4 a bes g | a8 f f2 f4 | f f d f | g8 c c2 g4 |
g4 a bes g | a r8 a a a f a | c2 r4 c | d a c r8 c |
d4 a c r8 c | d a4 a8 a4 g8 f | g8. a16 bes8 g c4 r8 c, | f f f2 f4 |
f8 f f4 r8 a a a | a4 a2 a8 a | a a a4 r8 c c c | c4 r8 c c c4. |
b4 b b c | f, g a8 a bes bes | c2 r8 c d d | a4 r r8 c d d |
a4 r8 a g4 a | bes2 g4 g | a8 a a4 a8 a a4 | a8 a a2 a4 |
d2 c | f2 r \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Slyš so -- vět -- ské ze -- mě děl -- nic -- ký vzkaz,
kde stro -- je to -- vá -- ren ne -- za -- há -- lí,
no -- vých měst kde bouř -- li -- vý vzrůst,
kde trak -- tor mez roz -- o -- ral dá -- vno.
Vzdor na -- šich ru -- kou mo -- zol -- ných, stisk ru -- kou po -- znal ví -- těz -- ných
a jas -- ný o -- ka svit a zo -- ce -- le -- nou tvář.
V~den ná -- vra -- tu nás ví -- tá zář a čer -- ván -- ky vý -- cho -- du zá -- pa -- dem se rdí.
Den ví -- těz -- ství se v~po -- chod dal, je tře -- ba ka -- ždý a -- by ce -- stu znal,
ku -- pře -- du šel a děl -- ník s~děl -- ní -- kem ve fron -- tě jed -- not -- né vždy stál.
Buď při -- pra -- ven, až při -- jde den, kdy děl -- nic -- ká ru -- ka
bo -- hat -- ství svě -- tu dá, věč -- ný mír a prá -- ci všem.
}

accompaniment = \chordmode {
\partial 4 s4 |
f2 d:m | bes4 c:7 f2 | bes2 d:m | g1:m |
g1:m | c:7 | f2 g:7 | c1 |
c1 | f | g:7 | c |
c1:7 | f2 d:m | c1 | f2 c |
f2 c | f g:7 | bes:m c:7 | f1 |
f1 | f | f | f |
g2.:7 c4:7 | d2.:m g4:m | c1 | f2 c:7 |
f2 es4 d:7 | g2:m c:7 | f1 | f |
bes2 c:7 | f1 |
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
        \midi { \tempo 4=108 }
}
