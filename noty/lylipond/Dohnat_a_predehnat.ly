\version "2.24.0"
\header {
        title = "Dohnat a předehnat"
        composer = "Josef Stanislav"
        poet = "František Němec"
}

melody =  \relative c'' {
        \clef treble
        \time 2/2 \key f \minor \tempo "Zpěvně, měkce" 2=60
r4 c des es | c2 g4 r | as bes8 bes g4 r8 g |
as4 f8 f as4. bes8 | c c c c f4 es | des es c bes |
c4 r8 c des4 c | bes as g8 g r4 \bar "||"
\key f \major \tempo "Rozhodně"
r4 c a g | f4. g8 a4 c | c8 c d d e2 ~ |
e4 d c8 a r c | f2^\markup { \italic "Vítězně" } c | d a4 a | a4. c8 c c bes c | d4 e c8 f4. ~ | f2. r4 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Po vě -- ky v~prá -- ci klet -- bu _ jsme a o -- tro -- ká -- ře _ zna -- li, my pro -- klí -- _ na -- li jsme ji
jen, když v~o -- ko -- vech jsme mře -- li.
Však Ří -- jen prá -- ce o -- ko -- vy straš -- li -- vou zdr -- til vá -- hou a o -- trok po -- znal _
sí -- lu svou a prá -- ce tvář -- nost pra -- vou.
}

textb = \lyricmode {
\set stanza = "2."
Nám vždy se smá -- li, že zhy -- ne prá -- ce, kde ot -- ro -- ci si vlád -- nou, však z~prá -- ce _ o -- ni stvo -- ři --
li věc hr -- din -- nou a slav -- nou.
Ty sta -- rý svě -- te výz -- vu slyš, přes ho -- ry plá -- ně mo -- ří, že o -- tro -- ci i bez
pá -- nů svět _ no -- vý, le -- pší stvo -- ří!
}

textc = \lyricmode {
\set stanza = "3."
Ten krás -- něj -- ší svět, jejž bu -- du -- jem sta -- ré -- mu hr -- dě _ pra -- ví: Jdem doh -- nat _ tě a pře -- de --
hnat a nic nás ne -- za -- sta -- ví!
My zúč -- to -- va -- li s~o -- tro -- ctvím, my zúč -- tu -- jem i s~hla -- dem, chcem v~kaž -- dém z~nás o -- tro --
ka za -- bít _ na -- vždy řá -- dem no -- vým.
}

accompaniment = \chordmode {
s1 | s2. c4:m | des2. es4 | es1 | c2:7 des4 es | bes4:m es as es | as2 bes:m | c1 |
f2. a4:m | bes2 f4 c | f2 a:m | e4:7 a:m c2:7 | d2:m c | bes d:m | f2. c4:7 | bes4 c:7 d:m bes | f1 |
}

\score {
        <<
          \new ChordNames {
             \set chordChanges = ##t
              \accompaniment
            }
          \new Staff = "mel" \new Voice = "one" { \autoBeamOff \melody }
          \new Lyrics \lyricsto "one" \text
          \new Lyrics \lyricsto "one" \textb
          \new Lyrics \lyricsto "one" \textc
        >>
        \layout { line-width = 18.0\cm }
}

\score {
        \unfoldRepeats <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 2=60 }
}
