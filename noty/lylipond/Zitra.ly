\header {
        title = "Z�tra";
        composer = "Z. Petr";
	poet = "V. Dvo��k";
}

melody = \notes \relative c' {        
\time 4/4 ;\key c \major;
\partial 2; 
e f | g2 g | f4 g a b | c2 g | r2 c,4 d e2 e | d4 e f g |
e2 r | r d4 c | a'2 a | c b4 a | g2 e | c d4 e | f2 a | g e |
d r | r e4 f | g2 g | f4 g a b | c2 g ( | ) g4 r c, d | e2 e |
d4 e f g | e r r2 | r d4 c | a'2 a | c b4 a | g2 e | c4 r e fis |
g2 b | a4 b c a | d1 ( | ) d4 r r2 | c1 ( | ) c4 ) b c d | c2 a4 b ( |
) b2 d | c a4 b ( | ) b2 g | e4 r r2 | r dis4 e | g2 e | b c | g' f |
r e4 f | a2 f | cis4 d e f | g2 gis | a b c1 ( | ) c4 b c d |
c2 a4 b ( | ) b r d2 | c a4 b ( | ) b r g2 | e4 r r2 | r dis4 e | g2 f
| e4 f a b | d2 c | b4 c d dis | e2 c | r d c4 r r2 | r1
}

text = \lyrics {
Dnes -- ka zp� -- v� v�e -- cko no -- vou p� -- se�, 
pa -- ni -- k� -- ��m do -- �el p�i n� dech.
P� -- se� po -- m� -- h�, je v~n� od -- va -- ha
do -- b�t z� -- tra no -- v� b�eh.
Slo -- vo z� -- tra ne -- n� pro n�s pr�z -- dn�,
slo -- vo z� -- tra to je ja -- ko slib.
Chce -- me v~m� -- ru ��t. chce -- me zv� -- t� -- zit,
pro -- to dnes -- ka jde n�m v�e -- chno l�p.
Z�t -- ra bu -- dem kou -- sek d�l,
kdo z~n�s by p��l si zp�t?
Stej -- n� z� -- tra ja -- ko dnes -- ka 
p�j -- de s~n� -- mi p�s -- ni� -- ka jak slun -- ce hez -- k�.
P�s -- ni� -- ka jak v~m� -- ji kv�t,
s~tou p�e -- sta -- v�t chcem sv�t.
M� -- me v� -- ru v~ra -- dost a svou s� -- lu, 
pro -- to  s~p� -- sn� v~m� -- ru
jdem vp�ed.
}

texti = \lyrics {

}



accompaniment =\chords {
g2:7 c1 g:7 c c | a:min d2:min.7 g:7 c r
c1:7 f f c2 e:7 a1:min d:min a:7 d:min g:7
c g:7 c c a:min d2:min e:7 a:min e:7 c1:7 f1.
b2:7 c e a1:min e:min a2:min.9 d:7 d1:min.9 g:7
c1. c2 d2.:min.7 g2.:7 g2:7 d2.:min.7 g:7 c4 r
r1 r1. e1:min d:min r1 r1. g1 c2 as:7 d:min.7 g:7
c1. c2 d2.:min.7 g2:7 r2. d2.:min.6 g2:7 r2. e4:7 r
g2:min.6 a1:7 d:min d:min a:min d2:7 as:7 c:6.4 a:min.7
d:7 g:7 c
		}

                       \score {
                               \simultaneous {
                       %         \accompaniment
                                 \context ChordNames \accompaniment

                                 \addlyrics
                                   \context Staff = mel {
                                     \property Staff.noAutoBeaming = ##t
                                     \property Staff.automaticMelismata = ##t
                                     \melody
                                   }
                                   \context Lyrics \text
                               }
                               \midi  { \tempo 4=250;}
                               \paper { linewidth = 20.0\cm; }
                       }


