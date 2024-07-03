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
  \tuplet 3/2 { f'8 e'8 f'8 } % Triplet starting on the fourth count
  a'4 gis'4 a'4.
                     a'16 b'16 c''8 a'16 b'8 g'16 a'4.

                     a'4. a'16 a'16 a'8. b'8 a'16 a'16 g'16 e'4.}
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
