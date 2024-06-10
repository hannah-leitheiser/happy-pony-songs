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
                                          c'4 c'4 c'4 b4 } }
      \addlyrics { \time 4/4 {  \lyricsPattern  \lyricsPattern \lyricsPattern \lyricsPattern }}
                            
    >>
     \new PianoStaff = "piano" <<
      \new Staff = "upper" { \time 4/4 {  } }
      \new Staff = "lower" { \time 4/4 \clef bass { } }
    >>
  >>
  \layout { }
  \midi { }
  }
}

