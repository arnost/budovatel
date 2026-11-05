\version "2.24.0"
\header {
        title = "Poďme, chlapci aj dievčatá!"
        subtitle = "Pochod a pieseň pracujúcej mládeže"
        composer = "Karol Elbert"
        poet = "Otto Kaušitz a Jarko Elen"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key d \major \tempo "Tempo di Marcia" 4=116
\partial 4 a4 | d2 r4 d | a2 r4 fis | a g g a |
fis2 r4 a | d2 r4 d | a2 r4 fis | a g g a |
fis2 r | b4. cis8 d d cis b | a2 fis4 r |
g4. a8 b b a g | fis2 e4 a | d2 r4 d |
a4 r r fis | a g g e | d r r d8 e \bar "||"
\mark \markup { \italic Refrén }
fis4 fis fis e8 fis | d2. fis8 g |
a4 a a g8 a | fis2. b8 cis |
d4 d e8 d cis b | a2 fis4 d8 e |
fis4 fis e8 d e fis | e2 a4 d,8 e |
fis4 fis fis e8 fis | d4 r r fis8 g |
a4 a a g8 a | fis4 r r b8 cis |
d4 d e8 d cis b | a4 r r d,8 e |
fis4 fis a8 g fis e | d4 r r2 \bar "|."
}

text = \lyricmode {
Hu -- rá! Hu -- rá! Je do -- ba no -- vých dní!
Už plá, už plá svit na -- šich po -- cho -- dní!
Mlá -- dež od -- hod -- la -- ná krá -- ča
s~ú -- sme -- vom, kde ča -- ká prá -- ca,
veď vie, že svet je eš -- te v~jar -- me tmy.
Poď -- me, chlap -- ci aj diev -- ča -- tá,
nech sa skon -- čí raz prá -- ca tá!
Rob -- me kaž -- dý naj -- lep -- šie čo vie -- me,
si -- la rúk a u -- mu ne -- za -- drie -- me.
Rob -- me s~lás -- kou vždy na svo -- jom,
či na po -- li, či za stro -- jom,
maj -- me k~prá -- ci nad -- še -- nie a vzlet,
nech sa zro -- dí no -- vý lep -- ší svet.
}

accompaniment = \chordmode {
\partial 4 s4 | d1 d1 a1:7
d1 d1 d1 a1:7
d1 g1 d2. b4:7
e2:m a2:7 d2 a2 d1
d1 a1:7 d1
d2. a4:7 d1
d2. a4:7 d1
g1 d4 a4:m b4 d4
d2 e2:7 a2. d4
d2. a4:7 d1
d2. a4:7 d1
g2. gis4:dim d2./a c4:7/e
d2/a g4 a4:7 d1
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
        \midi { \tempo 4=116 }
}
