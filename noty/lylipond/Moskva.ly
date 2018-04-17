\header {
        title = "Moskva";
        composer = "Dan. a DM. Pokrass";
	poet = "V. Lebedìv=Kumaè";
}

melody = \notes \relative c'' {        
\time 4/4;\key as;\partial 1/4;
c8 bes | as4 f2 e8 f | g4 c, ( ) c8 r c' bes |
as4 f < f'4.des > < es8 c > | < {des2 ( ) des8} {bes2 ( ) bes8} > r8
es des | c4. as8 des4 c | bes g ( ) g8 r c bes | as4. f8 e4 f | g2 ( )
g8 r c bes | as4 f2 e8 f | g4 c, () c8 r c' bes | as4 f < f'4. des4. > <
es8 c > | < {des2 ( ) des8} {bes2 ( ) bes8} > r8
es des | c4. as8 des4 c | bes g ( ) g8 r c bes | 
as4. c8 g4 as | f2 ( ) f8 r es4 | c'8. bes16 as4 () as8 r es4 | 
<des'8. bes8.> <c16 as16 > <{bes4 () bes8 }{ g4 () g8 }> r8 es,4 | 
g4. bes8 des4 < des f>  | <{es8. des16 c4 () c8 }{ c8. bes16 as4 ()
as8}> r8 es,4 | 
c'8. bes16 as4 () as8 r as4 | <{f8. a 16 des4 () des 8 }{des8. es16 f4
() f8 }> r8 f4 | es8. des16 c8 es8 des4 bes4 | as2 () as8 r 
        \bar "|.";
}

text = \lyrics {


Ji -- tro nì -- ¾né svìt -- lo dá -- vá 
v~¹e -- ru sta -- rým Kre -- mlu zdem,
V~chla -- du rá -- na hbi -- tì vstá -- vá
so -- vìt -- ská teï v¹e -- chna zem.
Ze bran le -- tí ván -- ky èi -- lé,
tep -- ny o -- ¾i -- ví ji¾ tvé,
do -- bré rá -- no mìs -- to mi -- lé, 
srd -- ce krá -- sné vla -- sti mé.
Ty lí -- bez -- ná, 
v¾dy ví -- tìz -- ná, tvou sí -- lu ka¾ -- dý 
v~svì -- tì zná, ty vla  -- sti má, ty Mos -- kvo má, 
tys nej -- sil -- nìj -- ¹í lás -- ka má.

}

accompaniment =\chords {
f4-min f1-min c1-7 | f2-min f2-7 | bes2-min es2-7 | as1 |
c1-7 |  f1-min.6.4 | c1-7 | f1-min  c-7 | f2-min f-7 |
bes-min es-7 | as1 | c-7 | f2-min c-7 | f-min es-7 as1 | es-7 es-7 
as2 es-7 | as1 des as2-6.4 es-7 as2.
		}

\score {
        \simultaneous {
%         \accompaniment
          \context ChordNames \accompaniment

          \addlyrics
            \context Staff = mel {
              \property Staff.noAutoBeaming = "1"
              \property Staff.automaticMelismata = "1"
              \melody
            }
            \context Lyrics \text
        }
        \midi  { \tempo 4 =150;}
        \paper { linewidth = 18.0\cm; }
}
