\header {
        title = "Pochod kosmonaut�";
        composer = "S. Zaslavskij";
	poet = "J. Aplt";
}

melody = \notes \relative c'' {        
\time 4/4 ;\key f \major;
c8. b16 c8 d c4 r | a8. gis16 a8 bes a c, f a | c4. d8 c4 f, |
f e r2 | d'8. cis16 d8 e d4 r | bes8. a16 bes8 c bes c, e g | 
c4. d8 c4 g | bes a r r8 a | bes4. a8 a4 g | f2 r4 r8 a |
d4 c g bes | a2. r4 | c8 bes bes c g2 | a8 f f a c4. c8 | c4 bes d c |
f,2 r4 f | bes2. c4 | d bes2 es4 | d4 bes [ c8 () bes ] c4 | f,2 r4 g
| c2. d4 | es4 c2 d4 | es [es8 () d ] c4 [ c8 () bes ] | a2. d,4 | g a
bes r8 f |  bes4 c d e | c4 a [bes8 () a ] g4 | c2 r4 f, | bes c d e |
f d bes g | c2 c | f,2. r4 | 
}

text = \lyrics {
Vzh� -- ru te� a vp�ed ram -- pa u� je p�i -- pra -- ve -- na! Vos --
tok u� se chv� -- je. Vzh� -- ru te� a vp�ed! A� jsi ho -- den sv� --
ho jm� -- na, lid ti � -- sp�ch p�e -- je! To ko -- smo -- nau -- ti
jsou!
A �a -- sne o -- ko -- l�, ko -- smo -- nau -- ti jdou moc -- n� or
-- l� k�� -- dla, zra -- ky so -- ko -- l�! A v�� -- ka vo -- l� i sv�
-- ty vzd� -- le -- n�, kdo d�l -- ky zdo -- l� pro �t� -- st� ze --
m� sv�? Jde kos -- mo  -- naut a v�e -- chny hv� -- zdy ml�� -- n� dr�
-- hy zn�, v~n�m z� -- �� v� -- �n� s� -- la li -- du v� -- t�z -- n�.
}

texti = \lyrics {

}



accompaniment =\chords {
f1 | f | f | c:7 | g:min | g:min |
c:7 f a:7 d:min
bes2 c:7 f1 g2:min c:7 f1 g2:min.7 c:7
f2 r4 f:7 bes2. f4 bes2. es4 bes2 c:7 f2 r4 g4:7
c2.:min g4 c2.:min g4 c1:min a2:7 d4 d:7 | g:min d:7 g:min r8 f:7
bes4 f bes g:min.7 f2:6 g4:min.7 c4:7 f2 r4 f:7 bes f bes a:7 d2:min
g:min.7 f2:6.4 c:7  f1

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


