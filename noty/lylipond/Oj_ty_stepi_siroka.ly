\version "2.24.0"
\header {
        title = "Oj, ty stepi široká"
        composer = "ruská národní píseň, úprava A. V. Svešnikov"
        poet = "český text L. Kubišta"
}

melody = {
        \clef treble
        \key g \minor \tempo "Lento" 4=60
\time 3/4 r4 g'8 a' bes' g' | es''4( d''8 c''16 bes') c''4 |
\time 4/4 g'2 \breathe g'4 g' |
\time 3/4 g''4( f''8 es''16 d'') es''8( g'') |
\time 4/4 d''2 \breathe f''8 f'' f'' d'' |
\time 3/4 g''4( f''8 g'') es''( d''16 c'') |
\time 4/4 g'2 d''4 d'' |
\time 3/4 f''8( es'' d''4) c'' | g''2. ~ | g''4 \breathe g'8 a' bes' g' |
es''4( d''8 es''16 d'') c''8( es'') |
\time 4/4 d''8( c'' g'4) \breathe d''4 es'' |
\time 3/4 f''8( g'' d''4) es''8( bes'16 a') |
\time 4/4 d''2 \breathe d''4 d'' |
\time 3/4 g''4 f'' es'' | d''4 \breathe d''-> bes'8->( d''->) | f''8( es'' d''4) c'' |
\time 4/4 g''2. \breathe g'8 g' |
\time 3/4 es''4( d'') c''8( d''16 c'') |
\time 4/4 bes'4( g') g' g' |
\time 3/4 g''4( f''8 d'') es''( g'') |
\time 4/4 d''2 f''4 d'' |
\time 3/4 es''4( d''8 es''16 d'') c''4 |
\time 4/4 g'2 d''4 d'' |
\time 3/4 c''4( bes') a' | g'2. ~ | g'4 \breathe g'8 a' bes' g' |
es''4( d''8 c''16 bes') c''4 |
g'8 \breathe es'' d'' c'' g' g' |
g''4( f''8 es''16 d'') es''8( g'') |
\time 4/4 d''2 f''8 f'' f'' d'' |
\time 3/4 es''4( d''8 bes') c''( bes'16 a') |
\time 4/4 g'2 d''4 d'' |
\time 3/4 f''8( es'' d''4) c'' |
\time 4/4 g'4( es'' d'' c'' | g'2) \bar "|."
}

text = \lyricmode {
Oj, ty ste -- pi ši -- ro -- ká, ste -- pi da -- le -- ká.
Oj, ty Vol -- ho má -- tuš -- ko, Vol -- ho, hlu -- bo -- ká. __
Oj, to or -- li ne -- le -- tí __ vzhů -- ru ko -- blo -- ze,
to jdou bur -- lá -- ci vzhů -- ru __ _ po Vol -- ze.
Ne -- leť or -- lí -- ku __ níz -- ko u ze -- mě,
ne -- choď bur -- lá -- ku blíz -- ko u bře -- hu. __
Oj, ty ste -- pi ši -- ro -- ká oj, ši -- ro -- ká, oj da -- le -- ká
oj ty Vol -- ho má -- tuš -- ko, Vol -- ho hlu -- bo -- ká. __
}

accompaniment = \chordmode {
g2.:m | c4:m g:m c:m | g1:m | es4 bes c:m |
g2:m bes | es4 bes c:m | g1:m |
f4:7 g:m c:m | g2.:m | g2.:m |
c4:m g:m c:m | g2:m bes4 es |
bes2 c4:m | g1:m |
es4 bes c:m | g2.:m | f4:7 g:m d:7 |
g1:m | c4:m g:m c:m | g1:m |
es4 bes c:m | g2:m bes |
c4:m g:m c:m | g1:m |
d2.:7 | g2.:m | g2.:m |
c4:m g:m d:7 | g2.:m |
es4 bes c:m | g1:m |
c4:m g:m c:m | g1:m |
f4:7 g:m d:7 | g1:m | g2:m
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
        \midi { \tempo 4=60 }
}
