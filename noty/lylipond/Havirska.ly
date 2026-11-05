\version "2.24.0"
\header {
        title = "Havířská"
        subtitle = "pochodová píseň"
        composer = "Jiří Pauer"
        poet = "Miloš Vacík"
}

melody = {
        \clef treble
        \time 4/4 \key c \minor \tempo "Pochodem" 4=112
es'4 es'8. f'16 g'4 g' | c''4 as' g' r8 g' |
as'8 as' as' bes' c''4 d'' | g'2. r4 |
f'4 f'8 g' as'4 bes' | c''4 g' f' r8 f' |
es'4 es'8 f' g'4 f' | es'4 es' d' r |
es'4 es'8 f' g'4 g' | c''4 as' g' r8 g' |
as'8 as' as' bes' c'' c'' d'' d'' | d''2. r4 |
es''4 es''8 d'' c'' bes' as' g' | f'4 r r2 |
c''4 c''8 bes' as' g' f' es' | d'4 r r2 |
es'4 es'8. f'16 g'4 g' | c''4 as' g' r8 g' |
es''8 es'' d'' c'' b'4 d'' | c''2. es'8 f' \bar "||"
\key c \major
g'8. a'16 g'8. fis'16 g'8. g'16 a'8. b'16 | c''2 g'4 r |
e'8 e' e'4 d''8 d'' d''4 | c''4 b' g' e'8 f' |
g'8. a'16 g'8. fis'16 g'8. g'16 a'8. b'16 | c''2 g'4 r |
e'8 e' e'4 d''8 d'' d''4 | c''4 b' g' r |
a'8 a' f' g' a' a' g' fis' | g'2 e'4 r |
a'8 a' fis' g' a' a' g' fis' | b'2 b'4 e'8 f' |
g'8. a'16 g'8. fis'16 g'8. g'16 a'8. b'16 | c''4( d'') e'' r |
f''8 a' a'4 g' b' | c''4 r r2 \bar "|."
}

text = \lyricmode {
Fá -- rá -- me vě -- ky do hlu -- bin a
mi -- lu -- je -- me je -- jich stín.
Však v~u -- hlí ra -- bi
bi -- li nás a
ssá -- li nám krev po dlou -- hý čas.
Jen je -- jich by -- la těž -- ní věž a
hlu -- bi -- ny a ze __ _ mě __ _ též,
a na -- še by -- lo o -- troc -- tví.
Však svět se z~na -- ší kr -- ve skví.
Fá -- rá -- me vě -- ky do hlu -- bin a
mi -- lu -- je -- me je -- jich stín.
Dnes -- ka
vši -- chni chla -- pi z~já -- my pů -- jdou s~ná -- mi
na -- ru -- bat pro vše -- chny svě -- tlo z~tmy. No -- vé
zá -- ři -- věj -- ší zít -- řky sbi -- ječ -- ka -- mi
vy -- bi -- jem na -- vždy -- cky z~hlu -- bi -- ny
Lid -- stvu dá -- me svě -- tlo, o -- heň, ví -- ru,
že bu -- de žít a pra -- co -- vat v~mí -- ru. Dnes -- ka
vši -- chni chla -- pi z~já -- my pů -- jdou s~ná -- mi
na -- ru -- bat svě -- tlo z~tmy.
}

textII = \lyricmode {
Jas pro -- za -- řu -- je šach -- ta -- mi a
pod ze -- mí jsme pá -- ny my.
Je po ra -- buň -- ku
pro -- kle -- tém a
vlá -- du __ _ ztrá -- cí nad svě -- tem.
Teď do bu -- dou -- cna jas -- ně plá ta
ví -- těz -- ná __ _ prá -- ce ha -- víř -- ská:
Nám vě -- že zve -- da -- jí se z~tmy
a jsou na -- ši -- mi pev -- nost -- mi!
Jas pro -- za -- řu -- je šach -- ta -- mi a
pod ze -- mí jsme pá -- ny my.
}

accompaniment = \chordmode {
c1:m | as2 c:m |
f1:m | g1:7 |
g2:7 f:m | c4:m g2.:7 |
c2:m bes:7 | c2:m g:7 |
c1:m | as2 c:m |
f1:m | g1:7 |
c1:m | g1:7 |
c2:m f:m | g1:7 |
c1:m | as2 c:m |
f2:m g:7 | c1:m |
c1 | c1 |
e1:7 | a4:m d:7 g2 |
c1 | c1 |
e1:7 | a4:m d:7 g2 |
g1 | c1 |
d1:7 | b2. g4:7 |
c1 | c4 g a2:7 |
f2 g | c1
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textII
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
