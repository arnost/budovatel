\version "2.24.0"
\header {
        title = "Voják úderník"
        composer = "Radim Drejsl"
        poet = "Radim Drejsl"
}

melody = {
        \clef treble
        \time 4/4 \key c \major \tempo "Rychleji" 4=126
\repeat volta 4 {
R1*2 |
g'4^"Solo" g' g' f'8 g' | e'4 e' r8 e' f' g' |
a'4 a' a'8 e' f' g' | a'2 r8 f' g' a' |
b'4 b' b'8 d'' c'' d'' | b'4 a' e' fis'8 g' |
a'4 a' g'8 fis' e' fis' | g'2~ g'4 r |
r4^"Sbor" e''8 e'' e''4 r | r4 g''8 e'' b'( g') f' e' |
}
\alternative {
  { f'8 g' a' b' c''4 d'' | c''2~ c''4 r | }
  { d'8 e' f' r \xNote g'4 g'8 f' | e'8 f' g' a' g'4 e'8 g' |
    c''4 e'' e'' d''8 c'' | g'8 g''4 e''8 b'( g') f' e' |
    f'8 g' a' b' c''4 d'' | c''4 r r2 \bar "||" }
}
g'4 g' g' f'8 g' | e'8 e'4. r8 e' f' g' |
a'4 a' a'8 e' f' g' | a'2 r8 f' g' a' |
b'4 b' b'8 d'' c'' d'' | b'4 e' e'8 e' fis' g' |
a'4 a' g'8 fis' e' fis' | g'2~ g'8 r g' b' |
\mark \markup { \musicglyph "scripts.segno" }
c''8 r e'' e'' e''4 d''8 c'' | g'8 r g'' e'' b'( g') f' e' |
d'8 e' f'4 \xNote g'4 g'8 f' | e'8 f' g' a' g'4 e'8 g' |
c''4 e'' e'' d''8 c'' | g'8 g''4 e''8 b'( g') f' e' |
f'8 g' a' b' c''4 d'' | c''4 r \xNote f''4 r \bar "||"
\mark \markup { \italic "Fine" }
\key e \major
b'2~^"Solo" b'8 gis' e' cis'' | b'2 r4 gis'8 fis' |
e'4 e' e'8 cis' e' a' | gis'2~ gis'8 r e' fis' |
gis'4 gis' gis'8 b'4 a'8 | gis'4 gis' gis'8 e'4 fis'8 |
gis'4 gis' fis'8 e' fis'4 | e'2 r4 e'8 gis' \bar "||"
\mark \markup { \italic "D. S. al Fine" }
}

text = \lyricmode {
Jen -- da byl ú -- der -- ní -- kem, plán pl -- nil
vždyc -- ky nad sto -- pa -- de -- sát.
Když mu však při -- šel svo -- lá -- va -- cí
lí -- _ stek, ne -- moh z_to -- ho de -- vět no -- cí spát.
Ho -- la hej, ho -- la hej, __ ne -- moh
z_to -- ho de -- vět no -- cí spát.
bej -- va -- lo, hej, tak se na to ne -- dí -- vej, ho -- la
hej! Hej, hej ho -- la hej, ho -- la hej, __ je -- jich
ře -- či už ne -- po -- slou -- chej!
Dnes -- ka je z_Jen -- dy vo -- ják, těm dvě -- ma
řá -- dům pat -- ří za to dík. Za -- krát -- ko
jas -- ně na té voj -- ně po -- cho -- pil, že k_so -- bě
pat -- ří vo -- ják, ú -- der -- ník. Ho -- la
hej, ho -- la hej, ho -- la hej, ho -- la hej, __ srd -- ce
sta -- teč -- ná, hej, na vo -- já -- ka vy -- ko -- vej. Ho -- la
hej, hej, hej! Ho -- la hej, ho -- la hej, __ vo -- ják
ú -- der -- ní -- ku po -- má -- hej. Hej!
S_vlá -- dou děl -- nic -- kou, kte -- ré pat -- ří srd -- ce tvé i
dík, pro -- ti svě -- tu ne -- přá -- tel vlast svou u -- brá -- ní
vo -- ják a ú -- der -- ník. Ho -- la
}

textB = \lyricmode {
Bu -- de to vel -- ká bí -- da ne -- chat si
teď jen o fab -- ri -- ce zdát.
Snad bu -- du mu -- set jak ma -- ši -- na
po -- slou -- chat, li -- di, to to bu -- de vy -- pa -- dat.
Ho -- la hej, ho -- la hej, __ li -- di,
to to bu -- de vy -- pa -- dat.
}

textC = \lyricmode {
Vý -- cvi -- ku se přec ne -- bál, ne -- bál se
a -- ni, že bu -- de mít hlad.
Jen stro -- hé ná -- zvy stra -- ši -- ly mu
v_hla -- vě: ta vni -- třní slu -- žba a ká -- zeň -- ský řád.
Ho -- la hej, ho -- la hej, __ ne -- moh
z_to -- ho de -- vět no -- cí spát.
}

textD = \lyricmode {
Jak si mám na ně zvyk -- nout, já se už
vi -- dím, jak jdu za mří -- že,
vždyť mi i sta -- ří ma -- zá -- _ ci
ří -- ka -- li: voj -- na, to jsou je -- nom po -- tí -- že.
Ho -- la hej, ho -- la hej, __ to -- hle
}

accompaniment = \chordmode {
\repeat volta 4 {
s1*2 | c2 g2 | c1 | a1:7 | d1:m | b1:7 | e1:m | a2:m d2:7 | g2. c4 |
c1 | e1:m |
}
\alternative {
  { g2:7 f4 g4:7 | c1 | }
  { g1:7 | c1 | c1 | e1:m | g2 f4 g4:7 | c1 | }
}
c2 g2:7 | c1 | a1:7 | d1:m | b1:7 | e1:m | a2:m d2:7 | g1:7 |
c1 | e1:m | g1:7 | c1 | c1 | e1:m | g2:7 f4 g4:7 | c1 |
s1 | b1:7 | cis1:m | gis1:m | cis1:m | cis1:m | e2 b2:7 | e1 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textB
          \new Lyrics \lyricsto "one" \textC
          \new Lyrics \lyricsto "one" \textD
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=126 }
}
