\version "2.24.0"
#(set-default-paper-size "a4")

\header { tagline = ##f pdftitle = "Budovatel – zpěvník budovatelských písní" pdfauthor = "budovatel.cz" }

\paper {
  print-all-headers = ##t
  top-margin = 14\mm
  bottom-margin = 14\mm
  left-margin = 18\mm
  right-margin = 18\mm
  print-first-page-number = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  oddFooterMarkup = \markup \fill-line {
    \if \should-print-page-number \fromproperty #'page:page-number-string
  }
  evenFooterMarkup = \oddFooterMarkup
  tocTitleMarkup = \markup \column {
    \fill-line { \fontsize #6 \bold "Obsah" }
    \vspace #2
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  score-markup-spacing.padding = #2
  markup-markup-spacing.padding = #1.2
  bookTitleMarkup = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t
}

\markup \fill-line {
  \center-column {
    \vspace #2
    \fontsize #16 \bold "BUDOVATEL"
    \vspace #1.5
    \fontsize #4 \italic "Zpěvník budovatelských písní"
    \vspace #4
    \epsfile #X #75 "iwan2.eps"
    \vspace #4
    \fontsize #2 "@POCET@ písní s notami, akordy a texty"
    \vspace #0.5
    \fontsize #2 "a @BEZNOT@ dalších písní s texty"
    \vspace #6
    \fontsize #1 "budovatel.cz"
  }
}
\pageBreak
