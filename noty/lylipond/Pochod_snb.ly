\version "2.24.0"
\header {
        title = "Pochod SNB"
        composer = "autor neznámý"
}

melody =  \relative c' {
        \clef treble
        \time 2/4 \key f \major \tempo "Pochodem" 4=112
\repeat volta 2 {
f4 f | f8 c f g | c2 | a4 a8 c | bes4 g | e g | f r |
}
\alternative {
{ R2 }
{ r4 f8 f }
}
d'2 ~ | d8 e f d | c4 r | r f,8 g | a2 ~ | a8 a g f | g4 r | R2 |
f4 f | f8. c16 f8 a | c2 | a4 a8 c | bes4 g | e g | f r | R2 |
\repeat volta 2 {
d'2^"Refrén" | bes4 bes | bes d | c4. c8 | c4 bes | a r |
f f | f8 c f g | a4 a | a8 e a bes | c-> r r4 | a g | f r | R2 |
}
}

text = \lyricmode {
\set stanza = "1."
Ve -- "dem'" ži -- vot po vo -- jen -- sku, da -- le -- ko od do -- mo -- va,
Kaž -- dý z~nás __ je z~o -- ce -- le, do bo -- je __ jde -- me smě -- le,
že jsme ho -- ši od ú -- tva -- ru zpí -- vá -- me si ve -- se -- le:
Krá -- sná, krá -- sná, je na -- še rod -- ná zem,
v~na -- šich řa -- dách sí -- la a -- by pro -- vždy by -- la, boj vy -- hra -- jem!
}

textb = \lyricmode {
pu -- tu -- je -- me po Slo -- ven -- sku, do -- mo -- vem je pří -- ro -- da.
}

accompaniment =\chordmode {
\repeat volta 2 {
f2 f f f c c:7 f
}
\alternative {
{ s2 }
{ f2 }
}
f2 f c g g g c c:7
f2 f f f c c:7 f s
\repeat volta 2 {
bes2 bes bes c c f
f2 f f a:m a:m c4 c:7 f2 s
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
        \midi { \tempo 4=112 }
}
