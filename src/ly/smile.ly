\version "2.22.2"
\header {
  tagline = "Xuuki.xyz"
  title = "Sketches"
  composer = "Vyvyan"
}

harmony = \repeat unfold 5 \relative { 
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

snare = \repeat unfold 20 \relative { 
  r2 d
  r2 d
  r2 d
  r2 d
}

brush = \repeat unfold 81 \relative {
	\xNotesOn
	d'1
}

hihat = \repeat unfold 20 \relative {
	\xNotesOn
	r4. \tuplet 3/2 {d64 d64 r32 r16 r4} r16 d16. r32 d8 r16 
	r8. d16. r4. r16  d8. d16.
	r8. d16. r4. r16  d8. d16.
	r8. d16. r4. r16  d8. d16.
}

kick = \repeat unfold 20 \relative {
    r2. r8  d8
	r2. d8 r8
	r8 d r2 \tuplet 3/2 {d8 r d}
	r2.\tuplet 3/2 {r8 d r}
}

bass = \repeat unfold 5 \relative {
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
	<c c,>4 r2.
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
	    r1 r r r
	    r1
        \harmony
      }
  >> 

 \new StaffGroup <<
    \new Staff {
    \time 4/4
    \clef bass
    \key c \major
	r1 r r r
	r1
    \bass
    }
  >>
  \new StaffGroup <<
    \new Staff {
      \clef percussion
	  \xNotesOn
	  r1 r r r
  	  r2 d'
      \snare
    }
    \new Staff {
      \clef percussion
	  \xNotesOn
	  d'1 d' d' d'
      \brush
    }
	\new Staff {
      \clef percussion
	  r1 r r r
	  r1
      \hihat
    }
    \new Staff \relative {
	  \clef percussion
	 r1 r r r r
      \kick   
    }
  %  \new Staff \relative {
  %  }
  >>
>>
 \layout {}
 \midi {
      \tempo 4 = 80   
  }
}
