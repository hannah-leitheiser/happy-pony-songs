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
          "Program 0: 0.05s, 0.3s, 60%, 0.05s : [5Hz, 20%], [2x, 100%]"
          "Program 1: 0.05s, 0.3s, 80%, 0.05s : [2x,  20%], [3x, 20%], [4x, 20%]"
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

                    f'8 g' aes' g' f' e' d' e' ees' f' g' f' ees'2  c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 d'2 
                    % | 10
                     r8 a16 e16 a8 b16 c'8 a4~ a8 r16
                    % | 11
                     r8 a16 f16 a8 b16 c'8. c'8 b16 a8 r16
                    % | 12
                    r8 b16 g16 b16 c'8 c'16 b16 a16  

                       }
      \addlyrics { 

                    We can be ha a[ah] py[pee].
                    Hur ry[ree] up it's time to leave.
                    Few will un der stand and that's O K. 
                    }
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" \with {
  instrumentName = "0"
  shortInstrumentName = "0"
}
{
        \set Staff.midiInstrument = "acoustic grand"
        \tempo 4 = 90 % This sets the quarter note (crotchet) to 120 BPM

       \clef treble 
        \time 4/4 


                                        {
 % Starting with rests to come in on the fourth count
  r2 r4 
  \tuplet 3/2 { f'8 e'8 f'8 } % Triplet starting on the fourth count
  a'4 aes'4 a'4.
                     g'16 a'16 b'8 g'16 a'8. g'16 fis'16~ fis'2

                     e'8. e'16 e'16 e'8. fis'8. e'16 d'8 e'8 b2 r2

                    f'8 g' aes' g' f' e' d' e' ees' f' g' f' ees'2  c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 c'8 d'2 
                    % | 10
                     r8 a16 e16 a8 b16 c'8 a4~ a8 r16
                    % | 11
                     r8 a16 f16 a8 b16 c'8. c'8 b16 a8 r16
                    % | 12
                    r8 b16 g16 b16 c'8 c'16 b16 a16  

                       }


 
}
      
      \new Staff = "lower" 
\with {
  instrumentName = "1"
  shortInstrumentName = "1"
} { 
        \set Staff.midiInstrument = "bright acoustic"
        \tempo 4 = 90 % This sets the quarter note (crotchet) to 120 BPM

        \clef bass 
        \time 4/4 
       { r1 <c e a>4 <b, dis gis> <c e a> <c e a> <a cis' e'> <a, c e> <b, dis fis> <b, dis fis a> <c e g> <c e g> <d fis a> <d fis a> <b, d g> <b, d g> <b, d e gis> <b, d e gis> 
         <f> <aes c'> <b,> <e g> <a,> <e g> <bes,> <ees g> <aes,> <c ees> <g,> <c ees> <g,> <b, d> <b, d> <b, d>
         <a, c a> <a, c a> <f, a, f> <f, a f> <f, b, e> <f, b e><f, b e><f, b e> <g b d> <g b d><g b d><g b d> } 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}
