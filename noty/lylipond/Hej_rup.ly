\version "2.24.0"
\header {
        title = "Hej rup!"
        composer = "Jaroslav Ježek"
        poet = "Jiří Voskovec a Jan Werich"
}

melody =  \relative c' {
        \clef treble
        \time 6/8 \key f \major \tempo "Rychle" 4.=100
f4 g8 f4 g8 | a4 g8 a4 g8 | f4 g8 f4 e8 |
d4 e8 f4 g8 | c,4 c8 c4 c8 | c4. g'4. | f4. r4. |
f4 g8 f4 g8 | a4 g8 a4 g8 | f4 g8 f4 e8 |
d4 e8 f4 g8 | c,4 c8 c4 c8 | c4. g'4. | f4. r4. |
a4 bes8 a4 bes8 | a4 g8 f4 e8 | d4 e8 f4 g8 | a4. r4. |
g4 a8 g4 a8 | g4 f8 e4 d8 | c4 d8 e4 f8 | g4. r4. |
f4 g8 f4 g8 | a4 g8 a4 g8 | f4 g8 f4 e8 |
d4 e8 f4 g8 | a4 a8 a4 a8 | g4. f4. | c'4. r4. |
c,2. | a'4. r4. | c,4 c8 d d d | e4 e8 f4 f8 |
d2. | a'4. r4. | d,4 d8 e e e | f4 f8 g4 g8 |
c,2. | c'4. r4. | c,2. | c'4. r4. | f,4. f | a4. \once \override TupletNumber.text = #"2" \tuplet 4/3 { f4 a } |
c2. | c,2. | a'4. r4. | c,4 c8 d d d | e4 e8 f4 f8 |
d2. | a'4. r4. | d,4 d8 e e e | f4 f8 a4 a8 |
c2. | f4. r4. | bes,2. | d4. d,8 e f | g2. | a2. \bar "||"
\time 2/2 \set Score.tempoHideNote = ##t
\tempo \markup { \concat { \smaller \general-align #Y #DOWN \note {4} #1 " = " \smaller \general-align #Y #DOWN \note {2} #1 } } 2=150
f4 r r2 | c2 a'4 r | c,4 d e f | d2 a'4 r |
d,4 e f g | c,2 c'4 r | c,2 c'4 r | f,4 f a f8 a |
c2 r | c,2 a'4 r | c,4 d e f | d2 a'4 r |
d,4 e f a | c2 f4 r | bes,2 d4 r | g,2 a |
f4 g a g | a g a \xNote c | \xNote c r r2 \bar "|."
}

text = \lyricmode {
Ne -- mít chle -- ba, ne -- mít prá -- ci, ži -- vo -- řit jak
da -- re -- bá -- ci, to přec ni -- kam ne -- ve -- de.
Sám si ni -- kdo ne -- ví ra -- dy, dej -- me hla -- vy
do -- hro -- ma -- dy, snad se nám to po -- ve -- de.
Dvě ho -- lé ru -- ce nám kri -- se bí -- dou za -- vá -- že,
a -- le dva -- cet ti -- síc ru -- kou hra -- vě do -- ká -- že,
že když nás kri -- se vy -- pe -- kla, že si po -- mů --
že -- me z~pe -- kla, ka -- ždý jak to do -- ká -- že.
Hej rup! pe -- klo ne -- bu -- de, ráj se vra -- cí.
Hej rup! s~ná -- mi kdo pů -- jde, na -- jde prá -- ci.
Hej rup! hej rup! jsme mla -- dí, chce -- me žít!
Hej rup! vši -- chni za je -- den táh -- nem pro -- vaz.
Hej rup! to pla -- tí pro vás, ja -- ko pro nás.
Hej rup! hej rup! že chce -- me vši -- chni žít.
Hej rup! kdo má sí -- lu! Hej rup! ru -- ce k~dí -- lu!
Hej rup! hej rup! jsme mla -- dí, chce -- me žít!
Hej rup! chce -- me prá -- ci! Hej rup, hej -- ru -- pá -- ci!
Hej rup! hej rup! chce -- me žít!
Hej rup! hej rup! hej rup! hej rup!
}

accompaniment =\chordmode {
f2. f f
bes2. c:7 c:7 f
f2. f f
bes2. c:7 c:7 f
a2.:7 a:7 d:m d:m
g2.:7 g:7 c:7 c:7
f2. f f
bes2. f g:7 c:7
f2. f f f
g2.:7 g:7 g:7 g:7
c2.:7 c:7 c:7 c:7 f g:7
c2.:7 f f f f
g2.:7 g:7 g:7 g:7
f2./c f/c bes bes c:7 c:7
f1 f f g:7
g1:7 c:7 c:7 f
c1:7 f f g:7
g1:7 f/c bes g2:m c:7
f2 bes f bes f1
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
        \midi { \tempo 4.=100 }
}
