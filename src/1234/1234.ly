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
      \new PianoStaff = "piano" <<
        \new Staff = "upper" { 
          \clef treble 
          \time 4/4 
          { 
            c'4 c'4 e'4 e'4 
            d'4 d'4 d'4 c'4 
            b4  b4  d'4 d'4 
            c'4 c'4 c'4 b4 
            a4  a4  c'4 c'4 
            b4  b4  b4  a4
            c'4  c'4  c'4  c'4
            c'1
          }
        }
        \new Staff = "lower" { 
          \clef bass 
          \time 4/4 { 
            <e g c'>4 <e g c'>4 <e gis c'>4 <e gis b d'>4
            <d f a>4 <d f a>4  <des f a>4 <c f g>4
            <b, dis fis a>4 <c dis fis a>4 <d g a>4 <c g a>4
            <c e g>4 <d e g>4 <b, f a>4 <b, f g>4 
            <a des>4 <a f des>4 <a d>4 <b, a d>4 
            <b, d f>4 <b, d g>4 <a, d f a>4 <a, d f g>4
            <c e fis a>2 <c f aes>2
            <c e g>1
          } 
        }
      >>
      \new Staff = "singer" <<
        \new Voice = "vocal" { 
          \time 4/4  
          { 
            c'4 c'4 e'4 e'4 
            d'4 d'4 d'4 c'4 
            b4  b4  d'4 d'4 
            c'4 c'4 c'4 b4 
            a4  a4  c'4 c'4 
            b4  b4  b4  a4
            c'4  c'4  c'4  c'4
            c'1
          }
        }
        \addlyrics { 
          \time 4/4 
          {  
            \lyricsPattern  
            \lyricsPattern 
            \lyricsPattern 
            \lyricsPattern 
            \lyricsPattern
            \lyricsPattern
            \lyricsPattern
            "5"1
          }
        }
        \markup {
          \column {
            \line { "Modulation Matrix:" }
            \override #'(column-lines . ((1 . 0) (2 . 0)))  % Remove lines between columns
            \table {
              \bold \line { "Overtone" "Index 1" "Index 2" }
              \line { "1" "0.5" "0.3" }
              \line { "2" "0.7" "0.2" }
              \line { "3" "0.6" "0.4" }
            }
            \line { "ADSR Envelope:" }
            \column {
              "Attack: 0.01"
              "Decay: 0.1"
              "Sustain: 0.7"
              "Release: 0.1"
            }
          }
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}
