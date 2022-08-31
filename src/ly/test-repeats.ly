\version "2.22.2"
\header {
  tagline = "Xuuki.xyz"
  title = "Sketches"
  composer = "Vyvyan"
}

progression_a = \repeat unfold 2 \relative { 
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

progression_b = \repeat unfold 1 \relative { 
  \xNotesOn
  r2 d'
  r2 d
  r2 d
  r2 d
  r2 d4. d4
  r4. d2
  r2 d
  r2 d
  r2 d4. d4
  r4. d2
  r2 d
  r2 d
  r1
  r1
  r2 d
  r2 d4. d4
}

progression_c = \repeat unfold 1 \relative {
	\xNotesOn
	r2. r8 d'
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

progression_d = \repeat unfold 1 \relative {
  \clef percussion
	\xNotesOn
	d'8\ppp d d d d d d d
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d

	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d

	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d

	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
}

progression_e = \repeat unfold 1 \relative {
}

progression_f = \repeat unfold 2 \relative {
	
	<c c,>4 r2.
	<c c,>4 r2.
	<a a,>4 r2.
	<b b,>4 r2.
	<a a,>4 r2.
	<a a,>4 r2.
	<f' f,>4 r2.
	<cis cis,>4 r2.
	<f f,>4 r2.
	<f f,>4 r2.
	<e e,>4 r2.
	<e e,>4 r2.
	<c' c,>4 r2.
	<a a,>4 r2.
	<g g,>4 r2.
	<gis gis,>4 r2.
}


\score {
<<
  \new StaffGroup <<
    \new Staff {
      \time 4/4
	  \tempo 4 = 80
      \clef alto
      \key c \major 
	  r1
      \progression_a
    }
  >> 

 \new StaffGroup <<
    \new Staff {
    \time 4/4
    \clef bass
    \key c \major
	r1
    \progression_f
    }
  >>
  %\new StaffGroup <<
  %  \new Staff {
  %    \clef percussion
  %    %\progression_b
  %  }
  %  \new Staff {
  %    \clef percussion
  %    %\progression_c
  %  }

  %  \new Staff \relative {
  %   %\progression_d    
  %  }
  %  \new Staff \relative {
  %  }
  %>>
>>
 \layout {}
 \midi {
      \tempo 4 = 80   
}
}
