\version "2.20.0"
\header {
        title = "Moskva" 
        composer = "Dan. a DM. Pokrass" 
	poet = "V. Lebeděv-Kumač" 
}

melody =  \relative c'' {        
\clef treble
\time 4/4 \key as \major \partial 4 
c8 bes | as4 f2 e8 f | g4 c, (  c8 ) r c' bes |
as4 f < f' des >4. < es c >8 | <des bes>2 ( q8 )  r8
es des | c4. as8 des4 c | bes g (  g8 ) r c bes | as4. f8 e4 f | g2 ( 
g8  ) r c bes | as4 f2 e8 f | g4 c, ( c8 ) r c' bes | as4 f < f' des >4. <
es c >8 | <des bes>2 ( q8 )  r8
es des | c4. as8 des4 c | bes g (  g8 ) r c bes | 
as4. c8 g4 as | f2 (  f8 ) r es4 | c'8. bes16 as4 ( as8 ) r es4 | 
<des' bes>8. <c as >16 <bes g>4 ( q8 )  r8 es,4 | 
g4. bes8 des4 < des f>  | <es c>8. <des bes>16 <c as >4 ( q8)  r8 es,4 | 
c'8. bes16 as4 ( as8 ) r as4 | <f des>8. <a es>16 <des f>4 ( q 8)  r8 f4 | 
es8. des16 c8 es8 des4 bes4 | as2 ( as8 ) r 
        \bar "|." 
}

text = \lyricmode {


Ji -- tro ně -- žné svět -- lo dá -- vá 
v~še -- ru sta -- rým Kre -- mlu zdem,
V~chla -- du rá -- na hbi -- tě vstá -- vá
so -- vět -- ská teď vše -- chna zem.
Ze bran le -- tí ván -- ky či -- lé,
tep -- ny o -- ži -- ví již tvé,
do -- bré rá -- no měs -- to mi -- lé, 
srd -- ce krá -- sné vla -- sti mé.
Ty lí -- bez -- ná, 
vždy ví -- těz -- ná, tvou sí -- lu kaž -- dý 
v~svě -- tě zná, ty vla  -- sti má, ty Mos -- kvo má, 
tys nej -- sil -- něj -- ší lás -- ka má.

}

accompaniment =\chordmode {
f4:m f1:m c1:7 | f2:m f2:7 | bes2:m es2:7 | as1 |
c1:7 |  f1:m6.4 | c1:7 | f1:m  c:7 | f2:m f:7 |
bes:m es:7 | as1 | c:7 | f2:m c:7 | f:m es:7 as1 | es:7 es:7 
as2 es:7 | as1 des as2:6.4 es:7 as2.
		}

\score {
         <<
         \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }

          \new Voice = "one" { \autoBeamOn \melody }
          \new Lyrics \lyricsto "one" \text
       >>
        \midi  { \tempo 4 =150 }
        \layout { linewidth = 18.0\cm  }
}
