\version "2.24.0"
\header {
        title = "Písnička pětiletky"
        composer = "Jan Kapr"
        poet = "František Kožík"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \major \tempo "Pochodem" 4=116
        \set melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy)
\compressMMRests { R1*2 }
\repeat volta 2 {
\key f \major
a'4 d, e8 f g4 | a4 d, e8 f g4 | a8 r16 bes c8 d bes4 a | g2. r4 |
g4 c, g'8 a bes4 | a8 g f g a2 | g8 g g a bes4-- g | a4-> bes-> c4.-> r8 \bar "||"
\key bes \major
bes8.-> d16 bes8 g f g f f | c' c c g bes4.-- r8 | bes8-> d bes g f g f d' | c8.-> bes16 a8 g f4. r8 |
g8.-> g16 g8 g a-> a a a | bes-> bes bes bes c-> r \xNote c4-> |
bes8-> d bes f g4 f | bes8.-> d16 bes8 f g4 f | c'8.-> c16 c8 d es4-> a,-> | bes2-> r2 |
}
\alternative {
{ R1 }
{ \compressMMRests { R1*2 } \bar "|." }
}
}

text = \lyricmode {
\set stanza = "1."
Když se mě -- ní svět, hleď -- me všich -- ni vpřed, kam se vý -- voj u -- bí -- rá,
zí -- třek všech -- ny zve, spoj -- me dla -- ně své, bu -- douc -- nost se prá -- ci o -- tví -- rá.
Za -- hraj -- te nám do kro -- ku pro pě -- ti -- le -- tý plán,
za -- hraj -- te nám do kro -- ku, ať zní to do všech stran!
Sli -- bi -- li jsme, vy -- pl -- ní -- me všich -- ni pev -- ný slib, hej!
sta -- rý svět se ztrá -- cí, sou -- tě -- ží -- me v~prá -- ci, bu -- de nám všem líp a líp!
}

accompaniment = \chordmode {
s1*2
\repeat volta 2 {
d2:m g:m d:m g4:m c:7 f2 d:7 g1:m
c1:7 f2 d:7 g1:m f4 c:7 f2:7
bes1 c4:m f bes2 bes1 c2:7 f
es2 d:7 g:m f:7
bes2 es4 f bes2 es4 bes c2:m f:7 bes1
}
\alternative {
{ bes1 }
{ bes1 bes1 }
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
        \midi { \tempo 4=116 }
}
