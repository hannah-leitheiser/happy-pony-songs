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
          "Program 0: 0.1s, 0.2s, 60%, 0.05s : [5Hz, 20%], [2x, 100%]"
          "Program 1: 0.1s, 0.3s, 80%, 0.1s : [2x,  20%], [3x, 20%]"
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
  a'4 aes'4 a'4.
                     g'16 a'16 b'8 g'16 a'8. g'16 fis'16~ fis'2

                     e'8. e'16 e'16 e'8. fis'8. e'16 d'8 e'8 b2 r2

                    f'8 g' aes' g' f' e' d' e' ees' f' g' f' ees'2  c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 d'2 }
      \addlyrics { 

                    We can be ha a py.
                    Hur ry up it's time to leave.
                    Few will un der stand and that's O K. 
                    }
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" \with {
  instrumentName = "1"
  shortInstrumentName = "1"
}
{
        \set Staff.midiInstrument = "glockenspiel"
        \tempo 4 = 90 % This sets the quarter note (crotchet) to 120 BPM

       \clef treble 
        \time 4/4 


                                        { r }
      }
      \new Staff = "lower" 
\with {
  instrumentName = "2 "
  shortInstrumentName = ""
} { 
        \set Staff.midiInstrument = "grand piano"
        \tempo 4 = 90 % This sets the quarter note (crotchet) to 120 BPM

        \clef bass 
        \time 4/4 
       { r1 <c e a>4 <b, dis gis> <c e a> <c e a> <a cis' e'> <a, c e> <b, dis fis> <b, dis fis a> <c e g> <c e g> <d fis a> <d fis a> <b, d g> <b, d g> <b, d e gis> <b, d e gis> 
         <f> <aes c'> <b,> <e g> <a,> <ees g> <bes,> <ees g> <aes,> <c ees> <g,> <c ees> <g,> <b, d> <b, d> } 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}
