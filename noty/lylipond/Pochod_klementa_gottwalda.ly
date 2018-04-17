\header {
        title = "Pochod Klementa Gottwalda";
        composer = "Graci�n";
	poet = "EL-CAR";
}

melody = \notes \relative c' {
        \time 4/4;\key f;
	\partial 4;
	a4 | d d d e | f e f e | d d8 e f4 g |
	a4 gis a r | bes bes8 bes bes bes c bes |
	a2 a4 r | e4 e8 e f4 e | a4 bes a r | a4 a8 a d2 |
	a4 a8 a d4. bes8 | a4 g a8 a r4 | r2 r4 a, |
	\key d;
	d8 cis d fis a4 r8 ais |
	b8 b b b a4 fis8 a | b b b b a4 fis8 fis | e d e fis d4 r |
	e e8 fis g4 e | fis g a fis | gis gis8 a b4 g | a b c r |
	a4 a8 a d4 b | a d r d | cis a b e | d r4 r2 
	        \bar "|.";
}

text = \lyrics {
Nad �u -- mot le -- sa, hu -- kot �e -- ky, nad 
ne -- be -- ty� -- n�ch hor -- stev hr�z, nad bou -- �ek jek a �i -- vl�
v� -- dy a� moc -- n�j -- �� je p�s -- n� hlas, �e chce -- me ��t, �e
chce -- me ��t a �e jsme ta -- dy. Ji� � -- trap by -- lo dost, chcem
vol -- ni ��t jak pt� -- ci, d�t li -- dem m�r a pr� -- ci a lid --
skou d� -- stoj -- nost.
Kdo chce� j�t s�n� -- mi, vy -- kro� sm� -- le, jen o -- dva -- hu si
s�se -- bou vem, za lep -- �� z� -- t�ek v��e -- le s�Kle -- men --
tem Gott -- wal -- dem.
}

accompaniment =\chords {
a4-7 d1-min d-min d2.-min g4-min
a e-7 a r g1-min d2.-min r4
e1-7 a-7 d1.-min g2-min
a1-7 r d1 g2 d g d e4.-7 a8-7 d4 r 
a1-7 d e-7 a-7 d2. g4 d1 fis2-min g4 a-7 d

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
        \midi  { \tempo 4 =120; }
        \paper { linewidth = 18.0\cm; }
}

