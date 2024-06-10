\version "2.21.0"

\header {
 date = "2024"
 copyright = ""
 title = "{x∈ N∣1≤x≤4}"
 composer = "Flower Pony"
}

lyricsPattern = \lyricmode {
  "1"4 "2"4 "3"4 "4"4
}

\book {
  \score {
  <<
    \new Staff = "singer" <<
      \new Voice = "vocal" { \time 4/4  { c'4 c'4 e'4 e'4 
                                          d'4 d'4 d'4 c'4 
                                          b4  b4  d'4 d'4 
                                          c'4 c'4 c'4 b4 
                                          a4  a4  c'4 c'4 } }
      \addlyrics { \time 4/4 {  \lyricsPattern  \lyricsPattern \lyricsPattern \lyricsPattern \lyricsPattern }}
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" { 
        \clef treble 
        \time 4/4 { 
          <c' e' g'>4 <c' e' g'>4 <e' g' b'>4 <e' g' b'>4
          <d' f' a'>4 <d' f' a'>4 <d' f' a'>4 <c' e' g'>4 
          <b d' g'>4 <b d' g'>4 <d' g' b'>4 <d' g' b'>4 
          <c' e' g'>4 <c' e' g'>4 <c' e' g'>4 <b d' g'>4 
          <a c' f'>4 <a c' f'>4 <a c' f'>4 <a c' f'>4
        } 
      }
      \new Staff = "lower" { 
        \clef bass 
        \time 4/4 { 
          c4 g4 c4 g4 
          d4 a4 d4 a4 
          b4 g4 b4 g4 
          c4 g4 c4 g4 
          a4 f4 a4 f4
        } 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}

