\version "2.24.0"
\header {
        title = "Stavíme nový svět"
        composer = "Jiří Pauer"
        poet = "Jiří Pauer"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \minor \tempo "Pochodem" 4=108
r4 r8 c8 | c'8 c4 bes8 | aes8 aes4 g8 | f8 f4. | f4 r8 c8 |
c'8 c4 bes8 | aes8 aes4 g8 | f8 f4. | f4 r | e!4 f | g aes | bes2 | es,4 r |
aes4. bes8 | aes4 bes | c8 r r4 | r4 r8 c,8 | c'8 c4 bes8 | aes8 aes4 g8 | f4 r |
r4 r8 c8 | c'8 c4 bes8 | aes8 aes aes g | f4 r | R2 | e!4 f | g aes | bes2 | es,4 r |
aes8 aes aes bes | c4 e! | f2 ~ | f4 r^\markup { \italic Fine }
\repeat volta 2 {
f2( | \afterGrace es2 { \parenthesize es16[ \parenthesize des] } | \afterGrace des2) { \parenthesize es16[ \parenthesize des] } |
c4 c | f8 es des c | des4 aes | c2 |
bes4 bes | c8 bes aes g |
}
\alternative {
{ aes4 des, | c2 | }
{ aes'4 f | e!2^\markup { \italic "Da Capo al Fine" } \bar "|." }
}
}

text = \lyricmode {
My sta -- ví -- me, sta -- ví -- me no -- vý svět.
A ni -- kým si ne -- dá -- me pře -- ká -- žet.
Dnes je hes -- lo mlá -- dí, stá -- le je -- nom vpřed!
My sta -- ví -- me, sta -- ví -- me svět.
A hle -- dí -- me do bu -- dou -- cích let.
Dnes je hes -- lo mlá -- dí, do -- pře -- du a ni -- kdy zpět!
Hej! __ kdo chce bu -- do -- vat a mí -- ti rád,
\set stanza = "1."
mu -- sí v~jed -- né řa -- dě s~ná -- mi stát!
bo -- jo -- vat!
}

textb = \lyricmode {
\repeat unfold 71 { \skip 1 }
\set stanza = "2."
pů -- jde za mír s~ná -- mi,
}

accompaniment =\chordmode {
s2 f2:m f:m f:m c:7 f:m f:m f:m f4:m es c2:7 c4:7 f:m es2 es
f2:m des c:7 c:7 f:m f:m f:m c:7 f:m f:m f:m f:m c:7 c:7 es es aes c:7 f:m f:m
\repeat volta 2 {
des2 aes bes:m bes:m bes:m des aes es es
}
\alternative {
{ f4:m bes:m c2:7 }
{ f4:m bes:m c2:7 }
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
        \midi { \tempo 4=108 }
}
