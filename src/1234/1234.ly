\version "2.21.0"

\header {
 date = "2024"
 copyright = "2024"
 title = "{x∈ N∣1≤x≤4} ∪ {5}"
 composer = "Flower Pony"
}

lyricsPattern =  \lyricmode {
  "1"4 "2"4 "3"4 "4"4
}

lyricsSection = \lyricmode { \lyricsPattern  
                                \lyricsPattern 
                                \lyricsPattern 
                                \lyricsPattern 
                                \lyricsPattern
                                \lyricsPattern
                                \lyricsPattern
                                "5"1  } 

melodyPattern = { c'4 c'4 e'4 e'4 
                  d'4 d'4 d'4 c'4 
                                          b4  b4  d'4 d'4 
                                          c'4 c'4 c'4 b4 
                                          a4  a4  c'4 c'4 
                                          b4  b4  b4  a4
                                          c'4  c'4  c'4  c'4
                                          c'1 }


\book {

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
          "Program 1: 0.1s, 0.1s, 80%, 0.1s : [5Hz, 20%], [2x, 100%]"
          "Program 2: 0.1s, 0.1s, 80%, 0.1s : [4x, 50%]"
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
      \new Voice = "vocal" { \time 4/4  \melodyPattern
                                        \melodyPattern }
      \addlyrics { \time 4/4 

                    \lyricsSection
                    \lyricsSection }
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" \with {
  instrumentName = "Violin "
  shortInstrumentName = ""
}
{
        \set Staff.midiInstrument = "acoustic grand"
        \tempo 4 = 120 % This sets the quarter note (crotchet) to 120 BPM

       \clef treble 
        \time 4/4 


                                        { c'4 c'4 e'4 e'4 
                                          d'4 d'4 d'4 c'4 
                                          b4  b4  d'4 d'4 
                                          c'4 c'4 c'4 b4 
                                          a4  a4  c'4 c'4 
                                          b4  b4  b4  a4
                                          c'4  c'4  c'4  c'4
                                          c'1}
      }
      \new Staff = "lower" 
\with {
  instrumentName = "bright acoustic"
  shortInstrumentName = ""
} { 
        \set Staff.midiInstrument = "flute"
        \tempo 4 = 120 % This sets the quarter note (crotchet) to 120 BPM

        \clef bass 
        \time 4/4 { 
          <e g c'>4 <e g c'>4 <e gis c'>4 <e gis b d'>4
          <d f a>4 <d f a>4  <des f a>4 <c f g>4
          <b, dis fis a>4 <b, dis fis a>4 <c g a>4 <c g a>4
          <c e g>4 <d e g>4 <b, f a>4 <b, f g>4 
          <a des>4 <a f des>4 <a d>4 <b, a d>4 
          <b, d f>4 <b, d g>4 <a, d f a>4 <a, d f g>4
          <c e fis a>4 <c e fis a>4 <c f aes>4 <c f aes>4
          <c e g>1} 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}
