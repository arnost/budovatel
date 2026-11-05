\version "2.24.0"
\header {
        title = "Jsou-li krásné mladé květy v máji"
        composer = "B. Mokrousov"
        poet = "Sergej Alymov, český text Pavel Kohout"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key f \minor \tempo "Pochodem" 4=104
f8 c' c c des c bes as | c4 c2. |
as8 es' es es f es des c | es2. r4 |
as,8 es' es es es4 des8[( f]) | f,8 c' c c c4 bes8[( des]) |
f,8 g as f c' bes as bes | f2. f'8[( es]) |
as,8 es' es es es4 des8[( f]) | f,8 c' c c c4 bes8[( des]) |
f,8 g as f c' bes as bes | f'2. r4 \bar "|."
}

text = \lyricmode {
Jsou -- li krás -- né mla -- dé kvě -- ty v~má -- ji,
ješ -- tě hez -- čí dív -- ky v~má -- ji jsou.
Když je sly -- ším smát se __
ve -- čer na za -- hrád -- ce, __
tak se ži -- vot změ -- ní po -- jed -- nou.
Hej, __ když je sly -- ším smát se __
ve -- čer na za -- hrád -- ce, __
tak se ži -- vot změ -- ní po -- jed -- nou.
}

accompaniment = \chordmode {
f2:m bes2:m f1:m
as2 es2:7 as1
as2. bes4:m f2.:m bes4:m
f2:m bes2:m f2.:m es4
as2. bes4:m f2.:m c4:7
f2:m bes2:m f1:m
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
        \midi { \tempo 4=104 }
}
