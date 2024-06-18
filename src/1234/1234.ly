\version "2.21.0"

\header {
 date = "2024"
 copyright = ""
 title = "{x∈ N∣1≤x≤4} ∪ {5}"
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
                                          a4  a4  c'4 c'4 
                                          b4  b4  b4  b4
                                          c'4  c'4  c'4  c'4
                                          c'1} }
      \addlyrics { \time 4/4 {  \lyricsPattern  
                                \lyricsPattern 
                                \lyricsPattern 
                                \lyricsPattern 
                                \lyricsPattern
                                \lyricsPattern
                                \lyricsPattern
                                "5"1}}
                            
    >>
\new PianoStaff = "piano" <<
      \new Staff = "upper" { 
        \clef treble 
        \time 4/4 
                                        { c'4 c'4 e'4 e'4 
                                          d'4 d'4 d'4 c'4 
                                          b4  b4  d'4 d'4 
                                          c'4 c'4 c'4 b4 
                                          a4  a4  c'4 c'4 
                                          b4  b4  b4  b4
                                          c'4  c'4  c'4  c'4
                                          c'1}
      }
      \new Staff = "lower" { 
        \clef bass 
        \time 4/4 { 
          <e g c'>4 <e g c'>4 <e gis c'>4 <e gis b d'>4
          <d f a>2 <des a>2
          <b, des fes a>2 <b, des fes a>2
          <c g>2 <ces a>2 
          <a c' f'>4 <a c' f'>4 <a c' f'>4 <a c' f'>4        } 
      }
    >>


  >>
  \layout { }
  \midi { }
  }
}

