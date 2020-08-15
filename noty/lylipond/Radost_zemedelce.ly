\version "2.20.0"
\header {
        title = "Radost zemědělce"
        composer = "" 
	poet = "J. Hilčr" 
}

melody =  \relative c'' {        
\clef treble
\time 4/4 
\key es \major 
\repeat volta 2 {
bes4 c bes as | g2 (  bes4 ) bes | es d bes g8 (  f ) | es2 es4 r |
bes' c bes as | g2 (  bes4 ) bes | es d bes f8 ( g ) | es2 es4 r | 
<c' as es as,> <c as es as,>  <c as es as,> <bes g es bes>
<g  e c >2 ( <bes g>4 ) <bes g e> | 
<as f><bes g><g es><f d> | <es  es >2 ( <g es >4 ) <bes g es> |
<c as es as,> <c as es as,>  <c as es as,> <bes g es bes>
<g  e c >2 ( <bes g cis,>4 ) <bes g e> | 
}
\alternative{{<as f>< bes g es > <g es bes> <f d bes> es2 es4 r
}{<as f>4. <bes g es>8 <c g es bes>4 <f f, d bes>4 <es g, es>2 <es
g, es>4 r}}
        \bar "|." 
}

text = \lyricmode {
Po -- mo -- hl jsem pšen -- ce, a -- by pro mír zrá -- la,
vy -- šel me -- zi žen -- ce do ú -- rod -- ných dá -- lav.
Vy -- šel me -- zi žen -- ce do ú -- rod -- ných dá -- lav.
Vy -- šel me -- zi žen -- ce do ú -- rod -- ných dá -- lav.
or -- li pře -- vy -- so -- ko.
}

accompaniment =\chordmode {
es2. bes4:7 es1 c4:m g:m es bes:7 es2. bes4:7
es2. bes4:7 es1 c4:m g:m es bes:7 es2. es4:7 as2. es4
c2 c:7 f4:m es2 bes4:7 es2. es4:7 as2. es4 c2. c4:7
f4:m es2 bes4:7 es1 f4:m es2 bes4:7 es1
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
       \midi  { \tempo 4=180 }
       \layout { linewidth = 20.0\cm  }
}


