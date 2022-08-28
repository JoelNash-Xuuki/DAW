\version "2.22.2"
%lilypond midi file test
#(ly:font-config-add-font "/home/joel/.fonts/xuukitype1.ttf") 
#(ly:font-config-add-directory "/home/joel/.fonts/xuukitype1.ttf")
\header {
  tagline = "Xuuki.xyz"
  title = "XXXXXX"%"061222_2101"
  composer = "VYV YAN"
}
\score {
  <<
  \new Staff  
   \new Voice \relative { 
	\time 4/4
	\tempo 4 = 84
	\clef alto
    \key c \major
	<c g' a e'>1
	<d f c' e>
	<a e' a c>
	<c g' b e>
	<c g' a e'>
	<c dis a' dis>
	<d a' c f>
	<a e' gis cis > % needs to be aM7
	<d a' c f>
	<d a' c f>
	<f a c e>
	<f a c e>
	<c g' c e>
	<a e' a c>
	<c g' b e>
	<gis' d' g b, >
  }
  \new Staff{
    \clef percussion
	r2 d'4. d'4
	r4. d'4 r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r

	r2 d'4. d'4
	r4. d'4 r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r
	r4 r d' r

	%r2 d'4. d'4

	%r4. d'
	%r2 d'4 d'4
	%r4. d'2
	%r2 d'
	%r2 d'
	%r2 d'4. d'4
	%r4. d'2
	%r2 d'
	%r2 d'
	%r1
	%r1
	%r2 d'
	%r2 d'4. d'4
  }
  \new Staff \relative {
    \clef alto
	\xNotesOn
	r8 d' r \tuplet 3/2{d r r} d d r
	d d r d r d d d 
	r d d d r d d d 
	d d r d r d d d 
	r d d d r d d d 
	d d r d r d d d 
	r d d d r d d d
	d d r d r d d d

	r8 d r \tuplet 3/2{d r r} d d r
	d d r d r d d d 
	r d d d r d d d 
	d d r d r d d d 
	r d d d r d d d 
	d d r d r d d d 
	r d d d r d d d
	d d r d r d d d
	%r d 

	%\tuplet 3/2{r r r} r \tuplet 3/2{d r r} r r r
	%\tuplet 3/2{r r r} r \tuplet 3/2{d d r} r r r

	%\tuplet 3/2{r r d} d \tuplet 3/2{d r d} d d r
	%\tuplet 3/2{r r d} r \tuplet 3/2{d d r} d d d
	%\tuplet 3/2{r r d} d \tuplet 3/2{d r d} d d d
	%\tuplet 3/2{r r d} r \tuplet 3/2{d d r} d d d

	%r8 d r \tuplet 3/2{d r d} d d r
	%\tuplet 3/2{r r d} r \tuplet 3/2{d d r} d d r
	%\tuplet 3/2{r r d} d \tuplet 3/2{d r r} d d d
	%\tuplet 3/2{r r d} r \tuplet 3/2{d d r} d d d

	%\tuplet 3/2{r r d} d \tuplet 3/2{d r d} d d r
	%\tuplet 3/2{r r d} r \tuplet 3/2{d d r} d d d






	r2. r4
	r2. r8 d
	r2. r4

	r2. r4
	r2. r4
	r2. r8 d
	r2. r4

	r2. r4
	r2. r4
	r2. r8 d
	r2. r4
	        
	r2. r4
	r2. r4
	r2. r8 d
	r2. r4
  }

  \new Staff \relative {
    \clef percussion
	\xNotesOn
	%d'8\ppp d d d d d d d
	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d

	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d

	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d

	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d
	%d d d d d d d d
  }

  \new Staff  
   \new Voice \relative { 
    \time 4/4
    \clef bass
    \key c \major
	r1%eis,4 e\ppp r2
	r4 eis, r2
	e r2
	r4 d r2
	e r2
	r4 eis r2
	e r2
	r4 d r2
	e r2
	r4 eis r2
	e r2
	r4 d r2
	e r2
	r4 eis r2
	eis r2
	r4 eis r2
  }

 \new Staff  
   \new Voice \relative { 
    \time 4/4
    \clef bass
    \key c \major
	%r4 g
  }

  \new Staff  
   \new Voice \relative { 
    \time 4/4
    \clef bass
    \key c \major
	%g4,, g g g
	%g g g g 

  }
  >>
  \layout {}
  \midi {}
}
