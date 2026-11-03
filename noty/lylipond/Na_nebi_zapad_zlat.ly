\version "2.24.0"
\header {
        title = "Na nebi západ zlát'"
        composer = "Mark Fradkin"
        poet = "Jevgenij Dolmatovskij, český text L. Kubišta"
}

melody =  \relative c'' {
        \clef treble
        \time 4/4 \key f \major \tempo "Výrazně" 4=96
        \repeat volta 2 {
                a4 a bes c8 bes | a2~ a8 r r4 | d,4 f8[( a]) c4 bes8 c | a2~ a8 r r4 |
                c4 c c bes8 c | d2 bes4 a8 g |
        }
        \alternative {
                { a2 cis,4. cis8 | d2 r2 | }
                { c'2 e,4. e8 | f2 r2 \bar "||" }
        }
        d'4 d d d8 d | e8[( d]) c bes c[( bes]) a4 | d,4 f a a8 a | bes8[( a]) g f g[( f]) e4 |
        d4 c f e8 f | g2 d | c4 e8[( g]) c4 b8 bes | a2~ a8 r r4 |
        d4 d e4. d8 | c4 a c8[( bes]) a[( g]) | d4 f a a | bes8[( a]) g[( f]) g[( f]) e4 |
        f4 g a gis8[( a]) | c4 bes a d, | e4 bes'8[( g]) a4 a | d2 r2 \bar "|."
}

text = \lyricmode {
        Na ne -- bi zá -- pad zlát, pod -- zim -- ku šu -- měl sad,
        před sou -- mra -- kem vo -- já -- ci do -- šli
        před Bě -- le -- hrad.
        \repeat unfold 4 \skip 1
        Vo -- já -- ci hna -- li dál na svých ko -- ních,
        rus -- ká pí -- seň jen zů -- sta -- la po nich,
        zů -- sta -- la ru -- ská pí -- seň,
        slo -- ky všem bra -- trs -- ké
        o ve -- li -- ké ze -- mi na -- ší,
        o dě -- vuš -- ce o Ka -- ťu -- ši
        a o měs -- tě ru -- do -- hvěz -- dém,
        pí -- seň o Mos -- kvě.
}

textB = \lyricmode {
        Ve vsi no -- co -- va -- li, při oh -- ni zpí -- va -- li,
        rá -- no zas ú -- to -- kem přes da -- le --
        \repeat unfold 4 \skip 1
        kou ze -- mi šli.
}

accompaniment = \chordmode {
        \repeat volta 2 {
                d2:m g2:m | d1:m | d2:m c2:7 | f1 |
                f1 | bes1 |
        }
        \alternative {
                { a1:7 | d1:m | }
                { c1 | f1 | }
        }
        bes1 | c2:7 f2 | bes2 a2:7 | g2:m c2 |
        c2:7 f2 | g1:m | c1:7 | f1 |
        bes1 | f2 c2:7 | d1:m | g2:m c2 |
        f1 | c2 d2:m | a2:7 a2 | d1:m |
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
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=96 }
}
