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
      \addlyrics { \time 4/4 {  \lyricsPattern  \lyricsPattern \lyricsPattern \lyricsPattern }}
                            
    >>
      \new PianoStaff = "piano" <<
      \new Staff = "upper" { \time 4/4 { c''4 e''4 g''4 c''4
                                         b'4 d''4 f''4 b'4
                                         a'4 c''4 e''4 a'4
                                         g'4 b'4 d''4 g'4
                                         f'4 a'4 c''4 f'4 } }
      \new Staff = "lower" { \time 4/4 \clef bass { c4 g4 c4 g4
                                                    b4 f4 b4 f4
                                                    a4 e4 a4 e4
                                                    g4 d4 g4 d4
                                                    f4 c4 f4 c4 } }
    >>
  >>
  \layout { }
  \midi { }
  }
}

