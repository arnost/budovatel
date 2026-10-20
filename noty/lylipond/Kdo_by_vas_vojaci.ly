\version "2.24.0"
\header {
        title = "Kdo by vás vojáci"
        composer = "Al. Šebestík"
}
#(set-global-staff-size 16)



melody =  \relative c'' {
 \time 2/4\key d \major
   a8 fis a4 | d8 cis4 b8 | a4  b  | fis2 |
   e4 fis | g8 g a b | cis cis b fis | a2 |
   b4 b | e, e | g8 g fis g | a4 r |
   b8 b e d | a4 fis | g8 e fis g | a2 |
   b8 b e d | a4 fis  | g8 e fis e | d2 |
        \bar "|."
}

text = \lyricmode {
Kdo by vás vo -- já -- ci ne -- měl rád,
když vás u ka -- sá -- ren vi -- dí bdě -- le stát
rá -- no, ve -- čer, v~no -- ci na strá -- ži,
a -- by ne -- pře -- kročil šků -- dce zá -- pra -- ží,
a -- by ne -- pře -- kr -- čil škůd -- ce zá -- pra -- ží.
}


refren = \lyricmode {
A -- by du -- chu mí -- ru nad ná -- mi
ne -- mo -- hl nám roz -- bít svý -- mi bob -- ba -- mi.
Pro -- to vás, vo -- já -- ci vše -- chen lid
mi -- lu -- je, vždyť vy jste je -- ho tvrz a štít,
vždyť vy jste je -- ho tvrz a štít.
}


PrvniHlas =  \relative c'' {
        \time 2/4\key g \major
b8 b a g | d'4(  c8)   b | a4  e | e  r |
b'8 b a g | d'4 b | a8 g fis g | a4 r |
g8 g a4 | b8 a4 g8 | c4 d | e r |
d8 e d b | a g fis g | b4 b   |b2  |
r8 a b g   | e'4 d | a r | b r |  g2 ( |  g8)  r8 r4 
\bar "|."
}


DruhyHlas =   \relative c'' {
        \time 2/4\key g \major
g8 g d b |  b'4 (  a8)  g |  e (  d)   c (  b)  | c4 r |
d8 e fis g | b4 g | fis8 e d e | fis4 r |
f4  f  | f2  | e4 g | c r |
b8 c b g | fis e d e |  
<<  {  cis4 dis } { e fis} >>  | << { g2 } {  e4 (  d) } >> | << { c d8 f
        } { e4 f8 f  } >> |
<< { e4 fis } { c' b } >> | < c, e > r | < d fis > r |  <  b d >2 ~      < b d >8  r8 r4 |
\bar "|."
}

trubka =   \relative c'' {
        \time 2/4\key d \major
a8 a16 a \tuplet 3/2 { a8 f a } | d4 a |  b8 b16 b \tuplet 3/2 {b8 g b}
         | e4 b | g8 fis'16 fis e4 (  | d2) | a8 fis'16 fis e4 (  | d2) | a'8. a,16
        \tuplet 3/2 { a8 a a }| a4 r |
}

AkordyTrubka = \chordmode {
d2 d2  g2 g2 d2 d2 a4:7 f4:7 a2
}

AkordyRefren = \chordmode {
g2 g2 a2:m d2:7
g2 b4:m e4:m a2:7 d2
g2:7  g2:7 c4 g c4 cis4:dim
g2 d2 a4:7 b4 e2:7
a4:m g4:7 c4 b4:m a2:m d2:7 g1
}


accompaniment =\chordmode {
 d2  b2:m  fis4:m  g4:7  d2  
 e4:m  b4   a2:7 d1  
 g2 e2:m  a2 d2    
 g4 g4:7  d2  e2:m d2  
 g4  g4:7  d4  b4:7  e4:m a4:7  d4 d4:7  
}







\score {
<<
\new ChordNames \with { noChordSymbol = "" } { \AkordyTrubka s2*2 \accompaniment \AkordyRefren }
\new Staff = "mel" \with { \autoBeamOff } {
  \new Voice = "trubka" \trubka
  \new Voice = "one" \melody
  <<
    \new Voice = "prvni" \PrvniHlas
    \new Staff = "druhy" \with { \autoBeamOff } \DruhyHlas
  >>
}
\new Lyrics \lyricsto "one" \text
\new Lyrics \lyricsto "prvni" \refren
>>

  \midi {
    \tempo 4 = 150
    }


        \layout {
          line-width = 18.0\cm
          % rucni tramce netvori melisma (jako v LilyPond 1.x)
          \context { \Score melismaBusyProperties = #'(melismaBusy slurMelismaBusy tieMelismaBusy completionBusy) }
        }
}

