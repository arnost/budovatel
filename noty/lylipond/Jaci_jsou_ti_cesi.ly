\header {
        title = "Jac� jsou ti �e�i";
        composer = "Jan Tausinger";
	poet = "Milo� Povondra";
}

melody = \notes \relative c' {        
\time 2/4;\key a \major;
\repeat volta 2{
e8 a4. | b4 d | cis a | e8 a4. | b4 d |
cis8 e4. | d8 d cis b | a8 e4. | d'8 d cis e |
a,8 () cis e4 | fis e | d8 cis b4 | a2 |
 <b8 d> <b d> <a8 cis> <gis b> | a8 e4. |  <b'8 d> <b d> <a8 cis> <gis b> 
a ( < )g a cis> <fis4 ais e'> | <b, d b' fis'> <cis a' e'> | 
<d8 fis d'> <dis fis cis'> <e4 gis b> | a2 |
}
e8 <cis4. e a> | <e4 gis b> <e gis d>|  <e a cis> a | 
e8 a4. | b4 d |
cis8 e4. | d8 d cis b | a8 e4. | d'8 d cis e |
a,8 () cis e4 | fis e | d8 cis b4 | a2 |
<b8 d> <b d> <a8 cis> <gis b> | a4 e |  <b'8 d> <b d> <a8 cis> <gis b> |
a ( < )g a cis> <fis4 ais e'> | <b, d b' fis'> <cis a' e'> | 
<d8 fis d'> <dis a' b fis'> <e4 b' d gis> | <a2 ( cis ( e ( a ( > |
<)a8 )cis )e )a > r r4 
}

text = \lyrics {
Ja -- c� jsou ti �e -- �i, ja -- c� jsou to li -- d�, kdy -- bys v�e
-- chny po -- bil, v�dy -- cky je -- den zbu -- de, v�dy -- cky je --
den zbu -- de.
Kdy -- bys v�e -- chny po -- bil, v�dy -- cky je -- den zbu -- de, v�dy -- cky je --
den zbu -- de.
�e u� ne -- n� b� --da, �e n�m slun -- ce sv� -- t�, ne -- cho� -- te
k~n�m p� -- ni, bu -- de -- te tu bi -- ti, bu -- de -- te tu bi --
ti!
Ne -- cho� -- te k~n�m p� -- ni, bu -- de -- te tu bi -- ti, bu -- de
-- te tu bi -- ti!__
}

accompaniment =\chords {
a2. e4:7 a1 e2:7 a d4 a:7 a2 d4 e:7 a fis:7 b:min a:6 d8 b:7 e4:7 a2
e a e a4:7 fis:7 b:min a b8:min b:7 e4:7 a2
a2 e a a e:7 a d4 e:7 a2 d4 e:7 a fis:7 b:min a:6 d8 b:7 e4:7 a2
e2 a e a4:7 fis:7 b:min a b8:min b:7 e4:7 a2
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
                               \midi  { \tempo 4=170;}
                               \paper { linewidth = 20.0\cm; }
                       }


