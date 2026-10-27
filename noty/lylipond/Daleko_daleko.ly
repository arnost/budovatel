\version "2.24.0"
\header {
        title = "Daleko, daleko"
        composer = "G. Nosov"
        poet = "A. Čurkin, český text J. Holečková"
}

melody =  \relative c'' {
        \clef treble
        \time 6/8 \key d \major \tempo "Mírným pohybem" 4.=58
r4^"sbor" r8 a8 a a | fis'4. e4. |
\repeat volta 3 {
a,4 r8 a8 a a | fis'4. e4. |
r8^"sólo" fis,8 a d cis a | b2. | r8 d,8 fis b a d, | fis4. e4. |
r8 e8 g e' d b | \time 9/8 d2.~ d8 cis a | \time 6/8 cis4.~ cis8 b fis | a2. |
r8 fis8 a d cis a | b2. | r8 d,8 fis b a b | a4. g4. |
r8 e8 g e' d e | \time 9/8 d2.~ d8 cis a | \time 6/8 cis4.~ cis8 b a | fis2. \bar "||"
r8 fis8 fis' fis e fis | e4. d4. | r8 fis,8 d' d cis d | cis4. b4. |
r8 d,8 d' d cis b | a4. fis4. | r8 d8 fis fis e d | a'2.\coda |
}
\alternative {
\volta 1,2 {
r8^\markup { sbor, \italic "o něco živěji" } fis8 fis' fis e fis | e4. d4. | r8 fis,8 d' d cis d | cis4. b4. |
r8^\markup { sólo, \italic "zpomalit" } d,8 d' d cis b | a4. d,4. | r8 d8 fis fis e8. d16 | d2. |
fis'4.^"sbor" e4. |
}
\volta 3 {
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \musicglyph "scripts.coda" " Závěr" }
a,8\repeatTie^\markup \italic "o něco živěji" \breathe fis8 fis' fis e16[ g8\fermata] fis16 | e4. d4. |
r8^\markup \italic "zvolnit" fis,8 d' d cis d | cis4. b4. |
r8^\markup \italic "jako na začátku" d,8 d' d cis b | a4. d,4. |
r8^\markup \italic "zvolnit" d8 fis fis e8. a16 | d2.~ | d4 r8 r4 r8\fermata \bar "|."
}
}
}

text = \lyricmode {
Da -- le -- ko, da -- le --
ko, da -- le -- ko, da -- le --
\set stanza = "1."
Da -- le -- ko, da -- le -- ko,
ku -- dy mra -- ky se táh -- nou,
vět -- rem vl -- ní se lá -- ny a vů -- ně jde z~niv,
v~kra -- ji mi -- lo -- va -- ném
k~sta -- ré mo -- hy -- le step -- ní
cho -- díš ve vzpo -- mí -- ná -- ní ty dál ja -- ko dřív.
A od mi -- lé -- ho z~dál -- ky
ce -- lé dni, ce -- lé no -- ci
če -- káš tou -- žeb -- ně zprá -- vu,
zda -- li je zdráv a živ.
A od mi -- lé -- ho z~dál -- ky
ce -- lé dni, ce -- lé no -- ci,
če -- káš tou -- že -- bně zprá -- vu,
zda -- li je zdráv a živ.
da -- le
}

textb = \lyricmode {
\repeat unfold 11 \skip 1
\set stanza = "2."
Ne -- be mo -- dro -- jas -- né
se tam nad te -- bou sklá -- ní,
bys -- trých řek hu -- čí prou -- dy a šum mo -- ře lká.
Ši -- rá, roz -- lo -- ži -- tá
je vel -- ká rus -- ká ze -- mě,
dra -- há ot -- či -- na krás -- ná, ta tvá je i má.
Na te -- be, jas -- no -- o -- kou,
ji -- třen -- ku sví -- ta -- jí -- cí,
zde na hra -- ni -- ci v~dá -- li
dnem no -- cí vzpo -- mí -- nám.
Na te -- be, jas -- no -- o -- kou,
ji -- třen -- ku sví -- ta -- jí -- cí,
zde na hra -- ni -- ci v~dá -- li
dnem no -- cí vzpo -- mí -- nám.
}

textc = \lyricmode {
\repeat unfold 11 \skip 1
\set stanza = "3."
Da -- le -- ko, da -- le -- ko,
zde za še -- dý -- mi hvoz -- dy
stře -- žím ce -- lý ten čas po -- koj tvůj a tvůj sen.
Ku -- dy cho -- dí jen zvěř,
přes ten práh ze -- mě rod -- né,
ne -- smí ne -- pří -- tel žád -- ný už víc vkro -- čit sem.
V~na -- šem ži -- vo -- tě ruš -- ném
na po -- hra -- nič -- ní hlíd -- ce,
ty mo -- je z~nej -- mi -- lej -- ší,
jsi věr -- ně v~srd -- ci mém.
\repeat unfold 30 \skip 1
V~na -- šem ži -- vo -- tě ruš -- ném
na po -- hra -- nič -- ní hlíd -- ce,
ty mo -- je z~nej -- mi -- lej -- ší,
jsi věr -- ně v~srd -- ci mém.
}

\score {
        <<
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
          \new Lyrics \lyricsto "one" \textc
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new Voice { \melody }
        >>
        \midi { \tempo 4.=58 }
}
