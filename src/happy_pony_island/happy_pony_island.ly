\version "2.21.0"

\header {
 date = "2024"
 copyright = "2024"
 title = "Happy Pony Island"
 composer = "Flower Pony"
}


\book {

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
          "This is line one of the first verse"
          "This is line two of the same"
          "And here's line three of the first verse"
          "And the last line of the same"
        }
      }
    }
    ""
  }
}

  \score {
  <<
    \new Staff = "singer" <<
      \new Voice = "vocal" { \time 4/4

 % Starting with rests to come in on the fourth count
  r2 r4 
  \tuplet 3/2 { a8 gis8 a8 } % Triplet starting on the fourth count
  c'2 b2 c'2.
                     c'8 d'8 e'4. c'8 d'4. b8 c'2.

                     a2. a8 a8 a4 b4 a4 a4 a4 e2}
      \addlyrics { 

                    We can be ha a py.
                    Hur ry up it's time to leave.
                    Few will un der stand and that's OK. }
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" \with {
  instrumentName = "Violin "
  shortInstrumentName = ""
}
{
        \set Staff.midiInstrument = "glockenspiel"
        \tempo 4 = 120 % This sets the quarter note (crotchet) to 120 BPM

       \clef treble 
        \time 4/4 


                                        { a }
      }
      \new Staff = "lower" 
\with {
  instrumentName = "Flute "
  shortInstrumentName = ""
} { 
        \set Staff.midiInstrument = "flute"
        \tempo 4 = 120 % This sets the quarter note (crotchet) to 120 BPM

        \clef bass 
        \time 4/4 { 
          a } 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}
