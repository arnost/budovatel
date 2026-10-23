\version "2.24.0"
\header {
        title = "Soudružko Koreo, buď zdráva!"
        composer = "Karel Reiner"
        poet = "Václav Sýkora"
}

melody =  \relative c' {
        \clef treble
        \time 4/4 \key a \minor \tempo "Slavnostně a energicky" 4=108
\partial 4 e4 |
e8 a, b c d e f g | a4 e4. e8 g f | e4 c e8 d b c | a2. e'4 |
a,8 b c d e fis gis a | b2 fis8 a gis fis | gis4 e gis8 fis dis e | cis4 r r cis |
cis'4. cis8 b4 a | b2 gis8 e e e | cis'4. cis8 b4 a | gis2 r8 gis gis gis |
cis8 r gis r dis' gis, gis gis | e'4 cis4. gis8 b a | gis4 e gis8 fis dis e | cis4 r r8 e cis e \bar "||"
\key a \major
a4. e8 e4 b' | cis2 a8 a b cis | d4 cis b8 a gis a | b2 ~ b8 b cis b |
a4 fis b8 a gis fis | gis4 e ~ e8 e a cis | b4 gis fis8 fis b b | e,2. e4 |
a4 e e8 e dis e | g!4 f! r a | c!4 g! g8 g a bes | a2 ~ a8 a a a |
d4 a a8 a b c! | c2 b8 b b b | e4. b8 cis4 d | e2 ~ e8 e, cis e |
a4. e8 e4 b' | cis2 a8 a b cis | d4 cis b8 a gis a | b2 r8 b cis d |
e4. cis8 a a gis a | e'2 d8 a a b | cis4 cis b b | e2 r8 a, a a |
e'4. cis8 a a gis a | e'4 d r8 a a b | cis4 e, e8 e cis' b | a4 r r2 \bar "|."
}

text = \lyricmode {
\set stanza = "1."
Od mo -- ří všech a ze všech svě -- ta -- dí -- lů po -- kro -- ku pí -- seň ja -- sná za -- zní -- vá.
Lid pra -- cu -- jí -- cí spo -- ju -- je svou sí -- lu, na vál -- ku mí -- ří je -- ho kla -- di -- va.
Lid v~sí -- le svo -- jí vstá -- vá a ce -- lý svět se za -- chví -- vá.
Ko -- re -- a bu -- de! Sil -- ná! Věč -- ně ži -- vá! Na vál -- ku mí -- ří na -- še kla -- di -- va.
Sou -- druž -- ko Ko -- re -- o, buď zdrá -- va! Ví -- těz -- ství li -- du při -- ne -- se ti mír. __
Hle, prav -- da svě -- ta na po -- moc ti vstá -- vá, __ svo -- bo -- du ro -- dí tvé -- ho bo -- je vír.
Jsme s~te -- bou, slav -- ná v~kaž -- dé chví -- li, je srd -- cí prav -- da zbra -- ní tvou. __
Na ce -- lém svě -- tě ros -- tou na -- še sí -- ly, hlas je -- jich hřmí už ob -- lo -- hou. __
Sou -- druž -- ko Ko -- re -- o, buď zdrá -- va! My děl -- ná tří -- da svě -- ta s~te -- bou jdem
a pro tvůj lid a je -- ho sva -- tá prá -- va, svo -- bo -- du slav -- nou do -- bu -- dem,
a pro tvůj lid a je -- ho sva -- tá prá -- va, svo -- bo -- du slav -- nou s~te -- bou do -- bu -- dem.
}

accompaniment = \chordmode {
\partial 4 s4
a2 d:m a2. d4:m a2 e a2. e4:7
a1 b e2 gis cis1:m
fis2:m b e1 a2 b e gis:7
cis2:m gis cis:m/gis fis:m cis:m/gis gis:7 cis:m e:7
a2. e4 a1 d4 a b2 e2. cis4
fis2:m b b4 e2 a4 e2/b b e1
a1 d:m c:m f2 a:7
d1 c2 g e1 cis2:m cis8:m e4.:7
a2. e4 a1 d4 a b2 e1
a2 a:7 d:6 d:m a/e e:7 a1:6
a2 a:7 d:6 d:m6 a/e e:7 a1
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
        <<
          \new ChordNames \accompaniment
          \new Voice { \melody }
        >>
        \midi { \tempo 4=108 }
}
