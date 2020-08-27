\version "2.20.0"
\header {
        title = "Pochod Klementa Gottwalda" 
        composer = "Gracián" 
	poet = "EL-CAR" 
}

melody = \relative c' {
        \clef treble
        \time 4/4 \key f \major 
	\partial 4 
	a4 | d d d e | f e f e | d d8 e f4 g |
	a4 gis a r | bes bes8 bes bes bes c bes |
	a2 a4 r | e4 e8 e f4 e | a4 bes a r | a4 a8 a d2 |
	a4 a8 a d4. bes8 | a4 g a8 a r4 | r2 r4 a, |
	\key d \major
	d8 cis d fis a4 r8 ais |
	b8 b b b a4 fis8 a | b b b b a4 fis8 fis | e d e fis d4 r |
	e e8 fis g4 e | fis g a fis | gis gis8 a b4 g | a b c r |
	a4 a8 a d4 b | a d r d | cis a b e | d r4 r2 
	        \bar "|." 
}

text = \lyricmode {
Nad šu -- mot le -- sa, hu -- kot ře -- ky, nad 
ne -- be -- tyč -- ných hor -- stev hráz, nad bou -- řek jek a ži -- vlů
vá -- dy ať moc -- něj -- ší je pís -- ně hlas, že chce -- me žít, že
chce -- me žít a že jsme ta -- dy. Již ú -- trap by -- lo dost, chcem
vol -- ni žít jak ptá -- ci, dát li -- dem mír a prá -- ci a lid --
skou dů -- stoj -- nost.
Kdo chceš jít s~ná -- mi, vy -- kroč smě -- le, jen o -- dva -- hu si
s½se -- bou vem, za lep -- ší zí -- třek v~če -- le s~Kle -- men --
tem Gott -- wal -- dem.
}

accompaniment =\chordmode {
a4:7 d1:m d:m d2.:m g4:m
a e:7 a s g1:m d2.:m s4
e1:7 a:7 d1.:m g2:m
a1:7 s d1 g2 d g d e4.:7 a8:7 d4 s 
a1:7 d e:7 a:7 d2. g4 d1 fis2:m g4 a:7 d

		}

\score {<<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
       >>
        \midi  { \tempo 4 =120  }
        \layout { linewidth = 18.0\cm  }
}

