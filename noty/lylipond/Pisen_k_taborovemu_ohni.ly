\version "2.24.0"
\header {
        title = "Píseň k táborovému ohni"
        composer = "E. F. Burian"
        poet = "E. F. Burian"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key d \minor \tempo "Táhle" 4=66
\repeat volta 2 {
d16 d8. a'8 a g g4. | c8 bes a d,4.( c8) r | d16 d8. a'16 a8. bes4 g | \tuplet 3/2 { f8 g e } a2( bes8) r |
a8 a d16 d8. e4 d | c8 d c bes a g4. | a8 g bes bes a4 f | e8 f e e d4 d \bar "||"
e4( d2 c8[ d] | e2) d4( c8[ d] | e1) |
}
\key a \major \tempo "Hybněji" 4=96
\repeat volta 2 {
a8 a cis cis e4 fis | e8 fis cis4 a2 | fis8 fis a a cis4 d | \tuplet 3/2 { cis8 d a } b2. |
fis'8 fis gis gis fis4 e | d8 e d e cis4 b | fis8 fis a a cis4 e | cis8 cis d d fis,4 a \bar "||"
fis4( e2 d8[ e] | fis2) e4( d8[ e] | fis1) |
}
}

text = \lyricmode {
\set stanza = "1."
Sta -- rá mat -- ka, sta -- rá, kdy -- si ži -- la,
kte -- rá sy -- nů de -- set po -- ro -- di -- la.
De -- set sy -- nů, de -- set, ja -- ko štíh -- lých stro -- mů.
Dá -- val pán bůh ště -- stí, dá -- val to -- mu do -- mu.
Ach! Ach!
\set stanza = "3."
Mat -- ko, mi -- lá mat -- ko, co to ši -- ješ?
Proč pak de -- vět věn -- ců na hrob vi -- ješ?
Sed -- ni si a u -- šij ru -- dý pra -- por sí -- ly,
po -- ne -- sem ho svě -- tu v~nej -- slav -- něj -- ší chví -- li!
Ach! Ach!
}

textb = \lyricmode {
\set stanza = "2."
Sta -- rá mat -- ka, sta -- rá, smut -- ná by -- la,
vo -- jen -- ské ka -- bá -- ty sy -- nům ši -- la.
Vo -- jen -- ské ka -- bá -- ty jeh -- lou ža -- lu své -- ho,
ztra -- ti -- la kus srd -- ce, srd -- ce ma -- teř -- ské -- ho.
Ach! Ach!
\set stanza = "4."
Mat -- ko, mi -- lá mat -- ko, už jsme ta -- dy!
Už jsme str -- hli pou -- ta kru -- té vlá -- dy!
Sed -- ni si a u -- šij de -- set mod -- rých ha -- len,
prv -- ní den náš vol -- ný pra -- cí bu -- de sla -- ven!
Ach! Ach!
}

accompaniment = \chordmode {
\repeat volta 2 {
d2:m c | g4:m d2:m c4 | d2:m g4:m c | d4:m a2. |
d4:m bes c c:7 | c2:7 c8:7 c4. | d4:m g:m d2:m | c2 d:m |
c4 d2.:m | c2 d4:m c8 d:m | a1 |
}
\repeat volta 2 {
a2. d4 | a1 | fis2:m fis4:m b:m | \tuplet 3/2 { fis8:m b:m fis:m } e2. |
b8:m b:m e e b4:m e | b8:m e b:m e a4 e | fis2:m a4 cis:m | fis4:m b:m fis2:m |
d4 a2 d8 a | d2 a4 d8 a | d1 |
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
          \new Lyrics \lyricsto "one" \textb
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=66 }
}
