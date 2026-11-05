\version "2.24.0"
\header {
        title = "Pieseň päťročnice"
        composer = "Ján Pöschl"
        poet = "Jar. Lacina"
}

melody = {
        \clef treble
        \time 2/4 \key g \major \tempo "Pochodem" 4=108
r4 d'8. d'16 | g'4 a' | b' c'' | b' g' | r g'8. fis'16 |
e'4 e' | g' e' | d'2~ | d'8 r b'8. b'16 | a'4 a' | b' c'' |
d''2 | b'4 b'8. b'16 | a'4 e' | fis' g' | a'2~ | a'8 r d'8. d'16 |
g'4 a' | b' c'' | b' g' | r g'8. fis'16 | e'4 e' |
g' a' | b'2~ | b'8 r b'4 | e'' e'' | e'' d'' | c'' b' |
a' ais'8. ais'16 | b'4 g' | b' a' | g'8 r r4 | \tuplet 3/2 { g'8 r g' } \tuplet 3/2 { g' r g' } \bar "||"
\key c \major \mark \markup { \italic "Refrén" }
g'4. e'8 | c' e' a' e' | g'4 c''8. d''16 | e''4 r |
g'4. e'8 | c' e' a' e' | g'4 c''8. d''16 | e''4 r |
f''2 | f''4 e'' | d'' c'' | b' a' | g'2 |
c''4 e' | g'2~ | g'4 r | a'2 | e''4 d'' | g'2 |
d''4 c'' | b'2 | a'4 b' | c''2~ | c''8 r r4 \bar "|."
}

text = \lyricmode {
Poď -- me vše -- tci v_päť -- roč -- ni -- ci,
ru -- ka v_ru -- ke s_bra -- tom brat,
spoj -- me si -- lu k_to -- mu cie -- lu,
no -- vý svet si zbu -- do -- vať.
Ťaž -- kos -- tí sa ne -- bo -- jí -- me,
do -- bre vie -- me, kde náš cieľ,
a sta -- toč -- ne si u -- ro -- bí -- me
i v_prá -- ci ten svoj diel. _ _ _ _
Hor' sa do ro -- bo -- ty, prá -- ce, je čas,
hor' sa, do -- brý o -- bčan, čuj ten -- to hlas,
máš v_hla -- ve um a v_ru -- ke stroj,
pluh i zbraň, v_náš rad si staň,
ľud i vlasť ver -- ne chráň!
}

accompaniment = \chordmode {
s2 | g4 d | g c | g2 | g2 |
c2 | c2 | g2 | g2 | d2:7 | d2:7 |
g2 | g2 | a2:7 | a2:7 | d2:7 | d2:7 |
g4 d | g c | g2 | g2 | c2 |
c4 c4:m6 | g2 | g4 b4:7 | e2:7 | e2:7 | a4:m e4:7 |
a4:m cis4:dim | g2/d | d2:7 | g2 | g2 |
c2 | c2 | c2 | c2 |
c2 | c2 | c2 | c2 |
g2:7 | g4:7 c4 | f2 | g2:7 | c2 |
c2 | c2 | c2 | f2 | f2 | c2/g |
c2 | g2:7 | g2:7 | c2 | c2 |
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
        \midi { \tempo 4=108 }
}
