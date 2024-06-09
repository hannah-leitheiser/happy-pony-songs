\version "2.21.0"

\header {
 date = "2024"
 copyright = ""
 title = "{x∈ N∣1≤x≤4}"
 composer = "Flower Pony"
}

\book {
  \score {
  <<
    \new Staff = "singer" <<
      \new Voice = "vocal" { \time 4/4  { c'4 c'4 g'4 g'4 d'4 d'4 d'4 d'4 b4 b4 f'4 f'4 c'4 c'4 c'4 c'4} }
      \addlyrics { \time 4/4 "1"4. "2"4. "3"4 "4"2 "1"4 "1"4. "2"4. "3"4 "4"2" }
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

