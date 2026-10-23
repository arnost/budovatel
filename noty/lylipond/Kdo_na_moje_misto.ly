\version "2.24.0"
\header {
        title = "Kdo na moje místo?"
        composer = "Jan Urban"
        poet = "Petr Bezruč"
}

dvojiA = \relative c' {
\time 3/4 \tempo "Těžce" 4=72
e4 g fis | b8 g e4. a8 | g8 e g4 fis8 dis | b2 r4 |
e4 g fis | b8 g e2 | a8 c b4. a8 | g8 a fis2 \bar "||"
}

melody =  \relative c' {
        \clef treble
        \key g \major
\dvojiA
\time 2/4 \tempo "Rychleji, s důrazem" 4=96
e4 \tuplet 3/2 { g8 fis e } | b'4 b | r8 e, \tuplet 3/2 { g8 fis b } | dis2\fermata |
\tempo "Spádně" 4=108
\repeat volta 2 {
e4 \tuplet 3/2 { b8 a g } | \tuplet 3/2 { fis8 a dis, } \tuplet 3/2 { fis8 b, dis } | e2 ~ | e4 r |
b4^\markup { \italic zrychlovati } \tuplet 3/2 { dis8 fis a } | \tieDashed dis,8 dis ~ dis4 |
e8 ~ e \tuplet 3/2 { e8 g c } | b4 ~ b \tieSolid |
c4 \tuplet 3/2 { b8 a g } | fis4 c' | b4 \tuplet 3/2 { a8 g fis } | g8 e r4 |
f4^\markup { \italic "zdržovati a temně s důrazem" } \tuplet 3/2 { f8 g f } | e8 e e4 | f8 g f4 | e8 e r e |
d8 e d4 | c8 c r c | b4 e8 dis | e8 e r4 |
}
\relative c' { \dvojiA }
\time 2/4 \tempo "Rychleji, s důrazem" 4=96
e4 \tuplet 3/2 { g8 fis e } | b'8 b4. \bar "||"
\time 3/4 \tempo "Zvolna" 4=66
r8 fis b b b4 | b2\fermata r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Tak má -- lo kr -- ve mám a je -- ště mi te -- če z~úst.
Až bu -- de na -- de mnou trá -- va růst, až bu -- du hnít,
kdo na mo -- je mí -- sto, kdo zdvih -- ne můj štít?
V~dým za -- ha -- len vít -- kov -- ských pe -- cí jsem stál, __
noc zře -- la mi z~o -- čí, plam z~noz -- dry mi vál,
nech zá -- ři -- lo slun -- ce, nech ve -- čer se še -- řil,
já sem -- knu -- tou br -- vou jsem vra -- hy ty mě -- řil; ty
bo -- ha -- té ži -- dy, ty gró -- fy ze šlach -- ty.
Tak má -- lo kr -- ve mám a je -- ště mi te -- če z~úst.
Až bu -- de na -- de mnou trá -- va růst, až bu -- du hnít,
kdo mís -- to mne na stráž, kdo zdvih -- ne můj štít?
}

textb = \lyricmode {
\repeat unfold 37 { \skip 1 }
\set ignoreMelismata = ##t
\set stanza = "2."
Nech di -- a -- dém jed -- no -- mu na skrá -- ni sví -- til,
z~nich u -- pja -- tý po -- hled můj kaž -- dý ve tvá -- ři cí -- til,
mou za -- ťa -- tou pěst a můj od -- vě -- ký vzdor, _
hněv kov -- ko -- pa z~Bez -- kyd, hněv kov -- ko -- pa z~hor, _ jenž
vys -- ko -- čil z~šach -- ty v~boj s~gró -- fy ze šlach -- ty.
}

akordyA = \chordmode {
e2:m b4:7 | e2:m e8:m a8:m | e2:m b4:7 | b2.:7 |
e2:m b4:7 | e4:m e2:7 | a4:m e2:m | b2.:7 |
}

accompaniment = \chordmode {
\akordyA
e2:m | e2:m | e4:m b4:7 | b2:7 |
\repeat volta 2 {
e2:m | b2:7 | e2:m | e2:m | b2:7 | b2:7 | c2 | g2 |
a2:m | d2:7 | g4 b4:7 | e2:m | d4:m g4:7 | c2 | a4:m g4:7 | g2:7 |
e2:7 | a2:m | b4:7 e8:m b8:7 | e2:m |
}
\akordyA
e2:m | e2:m |
s8 b8 b2 | e2.:m |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
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
        \midi { \tempo 4=72 }
}
