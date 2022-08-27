\version "2.22.2"
%lilypond midi file test
\header {
  tagline = "Xuuki.xyz"
  title = "Sketches"
  composer = "Vyvyan"
}
\score {
  <<
  \new Staff  
   \new Voice \relative { 
	\time 4/4
	\tempo 4 = 84
	\clef alto
    \key b \major
    <dis'e,fis>1   
	<dis e, b'>1  
	<b,fis'ais>1 r2
  }
  \new Staff{
    \clef percussion
	r2 d'
	r2 d'
    r2 d'
    r2 d'
  }
  \new Staff{
    \clef percussion
	\xNotesOn
	r2 \tuplet 3/2 {r4 f' r}
	r2 \tuplet 3/2 {r4 r f'}
  }
  \new Staff  
   \new Voice \relative { 
    \time 4/4
    \clef bass
    \key b \major
    dis, r4.
    dis4 r8
    e4 r4.
	dis4 r8
  }

  \new Staff  
   \new Voice \relative { 
    \time 4/4
    \clef bass
    \key b \major
    r4 e\ppp r4.
	e r4 ees 
  }
  >>
  \layout {}
  \midi {}
}
