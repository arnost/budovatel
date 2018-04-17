\header {
        title = "�lov�k mezi hv�zdami";
        composer = "Z. Marat";
	poet = "J. Fijezov�";
}

melody = \notes \relative c' {        
\time 4/4 ;\key c \major;
\partial 2.; b8 b b b b4 | g' g r r8 g | e e d e d c c16 c8 e16 |
a8 a a e a a a d, | g4 r r8 g g g | c c c a b b b a | d2. r8 e, | 
g g g e g4 e | g8 e r4 f8 e f g | a a a a f e f g | a2. bes8 c |
d4 d \times 2/3 {c d c} | bes8 a g f g a f g | a4 r r d,8 e |
g f f4 r r8 c | 
\key a \major; cis2 r | e4 fis e b' | a e e2 ( | ) e2 fis4 gis | a1 |
gis4 fis e dis | fis e e r | r2 r4 e | g g e fis | g g fis e | fis2 r
| r fis4 gis | a a fis gis | a a gis fis | gis2 r | fis4 gis a fis |
b a gis fis | e cis cis2 | r e4 fis | e e2. | e4 b2. | d4 cis2.|  r1 |
r4 a8 a a a  a4 | cis8 cis r4 r2 | r1 |


}

text = \lyrics {
Je -- ho jm� -- no je �lo -- v�k.
Nic lid -- sk� -- ho mu ne -- n� ci -- z�.
Snad chv� -- li m�l i v~kout -- ku srd -- ce strach.
kdy� h�m� -- ly mo -- to -- ry a c�l byl v~te -- mno -- t�ch.
Pak nes -- m�r -- n� jen ti -- cho by -- lo,
�u -- m� -- ly jen p�� -- stro -- je a od -- v� -- jel se p�s.
a -- by na -- v�dy na -- v�dy -- cky za -- zna -- me -- nal pr -- vn�
lid -- sk� hlas me -- zi hv�z -- da -- mi. 
A on, �lo -- v�k do -- sud ne -- zn� -- m� s�m a s�m 
le -- t�, le -- t� nad n� -- mi.
V~t� ne -- ko -- ne� -- n� fi -- a -- lo -- v� tm�.
Kde i slun -- ce je jen je -- dna z~mno -- ha hv�zd.
Od -- po -- v� -- d� na do -- ta -- zy ze ze -- m� m�k -- kou 
zp�v -- nou rus -- kou �e -- ��...
Je -- ho jm� -- no je �lo -- v�k.
}

texti = \lyrics {

}



accompaniment =\chords {
c2. f1:6 e2:7 a:min a:min.6 f:6
e:min.7 a:min a:min.6 b:7 e1 c2 f:6
c c:7 f:6 c:7 f:5-.6 f:7 bes d:7
g:min g:7 f:6.4 bes:7 f1| a
d2:5+ e:7 a e:7 a1 fis:min fis2:min b:7 e1
e cis fis:7 b b dis:5- gis:7 cis:min d d cis:min fis
b:min e a r d a 
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
                               \midi  { \tempo 4=120;}
                               \paper { linewidth = 20.0\cm; }
                       }


