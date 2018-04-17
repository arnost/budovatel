\header {
        title = "Pochod demokratick� ml�de�e";
        composer = "A. Novikov";
	poet = "L. Ol�anin";
}

PrvniHlas = \notes \context Voice = prvni {
\property Voice.verticalDirection = \up
\key a;
e8. e16 e8. e16 e8. e16 a8. b16 |
cis2. cis8. d16 | b2. b8. cis16 
a2. cis,8. d16 |
e8. e16 e8. e16 e8. e16 a8. b16 |
cis2. cis8. d16 | b2. b8. cis16 
| a2. r4 | b2. a8. cis16 |
b2. cis8. a16 | d4 cis b a | gis fis e cis8. d16 |
e8. e16 e8. e16 e8. e16 a8. b16 | cis2. cis8. d16  b2. b8. cis16 |
a2. r4 |
}

DruhyHlas = \notes  \context Voice = druhy { 
\property Voice.verticalDirection = \down
\key a;

e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16 |
d2. e8. e16 |
cis2. cis8. d16 |
e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16 |
d2. e8. e16 |
 cis2. r4 |
<{ e2. e8. e16 |e2. e8. e16 |fis4 fis d dis |  }
{ gis2. fis8. a16 | gis2. a8. fis16 | a4 a fis fis |}>
e4 dis e cis8. d16 | e8. e16 e8. e16 e8. e16 c8. e16 | a2. fis8. fis16
d2. e8. e16 a2. r4 
}

melody = \notes \relative c' {        
\time 4/4;\key c;
e4 e e d8. c16 | d2 d4 b8. c16 | d4 b8. c16 d4 c8. b16 | e1
g4 g g f8. e16 f2 f4 f8. g16 | a4 f8. g16 a4 g8. f16 | e1
c'4 c  c c8. c16 | c2 b2 | b4 b b b8. b16 b2 a |
a4 g8. f16 g4 e | f4 e8. d16 e4 c | b a'8. a16 a4 b |
e,2 r4 cis8. d16  <{\PrvniHlas}{ \DruhyHlas } >
        \bar "|.";
}

text = \lyrics {
Z~n� -- ro -- d� a� jsme r�z -- n�ch,
jed -- no p�� -- n� te� v~n�s bu -- de ��t
po l� -- tech v�l -- ky hr�z -- n�ch
zno -- vu za bla -- ho v�ech jdem se b�t.
Z~roz -- d�l -- n�ch sv� -- ta l� -- n�,
od mo -- ��, o -- ce -- � -- n�
k~n�m v�ich -- ni sp�j -- te,
n�m ru -- ku dej -- te,
vp�ed s~n� -- mi m� -- te j�t.
P� -- se� p�� -- tel -- stv� a� zp� -- v�,
kdo je ml�d, kdo je ml�d, kdo je ml�d,
svo -- ji p� -- se� ne -- d� -- me si ni -- k�m 
br�t, ni -- k�m br�t, ni -- k�m br�t.
P�s -- ni� -- ce ml� -- de -- �e od -- po -- v�� d� ce -- l� sv�t!
Svo -- ji p� -- se� ne -- d� -- me si ni -- k�m br�t, ni -- k�m br�t, 
ni -- k�m br�t!

}

accompaniment =\chords {
a1-min d1-min e1-7 a1-min
c2 c2-dim d1-min d1-7 c2 e2-7
a1-min d1-min g1-7 c1
g2-7 c2 d2-min a2-min b1-7
e2-7 r2 a1 a2. fis4-7
b2.-min e4-7 a1 a1 a2. fis4-7 b2.-min e4-7 a2. r4 e2. a4
e2. a4 d4 fis4-min b4-min b4-7 e b e2-7
a1 a2. fis4-7 b2.-min e4-7 a2. r4 
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
