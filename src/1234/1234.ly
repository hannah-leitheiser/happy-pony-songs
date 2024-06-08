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
      \new Voice = "vocal" { \time 4/4  { a4. b8 c'4. d'8 b4. g8 a2 a4. b8 c'4. d'8 b4. g8 a2
                               e'4. c'8 d'2 d'4. b8 c'2 } }
      \addlyrics { \time 4/4 "1"4. and8 "2"4. and8 "3"4. and8 "4"2 "1"4. and8 "2"4. and4 "3"4. and4 "4"2 
                             "1"4. "and"8 "2"2 "3"4. and8 "4"2}
    >>
    \new PianoStaff = "piano" <<
      \new Staff = "upper" { \time 3/4 { a4. b8 c'4. d'8 b4. g8 a2 a4. b8 c'4. d'8 b4. g8 a2
                               e'4. c'8 d'2 d'4. b8 c'2 } }
      \new Staff = "lower" { \time 4/4 \clef bass { <a c e>2 <f c a>2 <g b d>2 <a c e>2   <a c e>2 <f c a>2 <g b d>2 <a c e>2 
					<c e g>2 <d g b>2 <d f a>2 <a e c>2

      } }
    >>
  >>
  \layout { }
  \midi { }
  }
}

