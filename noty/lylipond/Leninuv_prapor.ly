\version "2.24.0"
\header {
        title = "Leninův prapor"
        composer = "Jan Kapr"
        poet = "K. M. Walló"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key es \major \tempo "Pevně a rázně" 4=108
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy)
\partial 4. g'8 g g |
\repeat volta 3 {
c4.( g8) es r f g | es4 es r8 f g as | bes4 bes as c | g r r8 g g g |
c4.( g8) es r f bes | g4 g r8 g g a | bes4 bes c d | bes r r bes |
c4 f,8[( g]) as bes c d | es8 bes4. ~ bes8 r g bes | c4 c8 bes as4 g | f2 r8 g as as |
c4.( g8) es r f bes | g4 g r8 g fis g | a4 r8 a bes4 bes | c8 r f,4 f f \bar "||"
\key bes \major
d'2 d | g,4 g c c | f,2 f | r4 g g a | f2 bes4. r8 |
es,4. es8 g4 bes | a2. r4 | r4 f f f | d'2 d | g,4 g c c | f,2 f | r4 g g a | f2 bes |
}
\alternative {
{ c4 c bes c | bes2. r4 | R1 | r2 r8 g g g }
{ c4 c bes f' | f2 ~ f4 r \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Už do -- sti vá -- lek, do -- sti bí -- dy, ať puš -- ky svě -- ta o -- ně -- mí.
Kon -- čí se vlá -- da va -- ší tří -- dy a no -- ví vlád -- ci to jsme my.
My ne -- sem na pra -- po -- ru ru -- dém prav -- dy po -- cho -- deň ho -- ří -- cí.
My zí -- tra vlád -- nout svě -- tu bu -- dem, my děl -- ní -- ci a rol -- ní -- ci.
Le -- ni -- nův pra -- por ru -- dou bar -- vou zá -- ří, nad ce -- lým svě -- tem zít -- ra bu -- de vlát!
Spoj -- te se vši -- chni svě -- ta pro -- le -- tá -- ři! V~boj za mír krá -- čí
pro -- le -- ta -- ri -- át!
\set stanza = "2."
Skon -- čí -- me
pro -- le -- ta -- ri -- át! __
}

accompaniment = \chordmode {
\partial 4. s4.
\repeat volta 3 {
c2.:m f4 c1:m g4:m c:7 f:m f:m7 g1:7
c2.:m bes4 es2. d4:7 g2:m f:7 bes1
f1:m es as2 c:7 f2:m f8:m g4.:7
c2.:m bes4 es1 d2 g:m f1:7
bes1 c:m d2:m bes bes4 es2 c4:m d2:m g:m
c2.:m a4:7 d1:7 f bes c:m d2:m bes bes4 es2 c4:m d2:m g:m
}
\alternative {
{ c2.:m f4:7 bes1 g2 g:7 c:m g }
{ c2.:m f4:7 bes1 }
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
