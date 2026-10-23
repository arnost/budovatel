\version "2.24.0"
\header {
        title = "Ve jarmu, co tak dlouho hyne"
        composer = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 6/8 \key f \major \tempo 4.=72
\partial 8 c8 |
a'4 a8 a4 a8 | a8[( bes]) c d4. | c4. r4 a8 | c4 bes8 g4. | r4 g8 bes8[( a]) g |
a4. r4 c,8 | a'4 a8 a4 a8 | a8[( bes]) c d4. | c4. r4 a8 | c4 bes8 g4. | r4 g8 bes8[( a]) g |
f4. r4 f'8 | g,4 g8 g4 g8 | bes8[( a]) g f4 a8 | a4. r4 a8 | a4. r4 f'8 |
g,4 g8 g4 g8 | bes8[( a]) g f4 a8 | a4. r4 a8 | a4. r4 r8 |
g4. c4 c8 | c4. g'4. | f8[( e]) d d[( c]) bes | a8[( d] c) a[( d] c) |
g4. c4 c8 | c4. f4. | f8[( c]) a c[( bes]) g | f4.~ f8 r8\fermata \bar "||"
\set Timing.measurePosition = #(ly:make-moment 5/8)
c'8^\markup { \column { \italic "zdlouha" "vi" } } | d4. c4 a8 | f4\fermata r4^"de" \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Ve jar -- mu, co tak dlou -- ho hy -- ne, ze -- sí -- le -- ná vlast po -- vstá -- vá,
nechť ná -- ro -- da k~so -- bě při -- vi -- ne, an vol -- nost meč nám po -- dá -- vá!
I kdož by vá -- hal v~tu chví -- li? Juž čas! juž čas!
Na vra -- hy, co nás zhu -- bi -- li, u -- deř -- me vráz!
Čest a ví -- těz -- ství o -- če -- ká -- vá nás, nás,
čest a ví -- těz -- ství o -- če -- ká -- vá nás!
Slo -- va -- né po -- zor!
}

accompaniment = \chordmode {
\partial 8 s8
f2. f4. bes f2. c:7 c:7
f2. f f4. bes f2. c:7 c:7
f2. c:7 c4.:7 f f2. f
c2.:7 c4.:7 f f2. f
c2.:7 c:7 c4.:7 bes f2.
c2.:7 c:7 f4. c:7 f2.
f8 bes4. c:7 f2
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
        \midi { \tempo 4.=72 }
}
