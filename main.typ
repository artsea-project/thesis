// Główny plik pracy. Kompilacja:
// typst compile --font-path fonts main.typ

#import "template.typ": thesis

#show: thesis.with(
  // Po pobraniu dokumentów z MojaPG skopiuj je do katalogu `pages/`
  // i odkomentuj poniższe wiersze.
  title-pages: (
    // image("pages/1_title.pdf"),
    // image("pages/2_statement.pdf"),
  ),
  front-matter: [
    #include "pages/3_abstract_PL.typ"
    #include "pages/4_abstract_ENG.typ"
    #include "pages/5_symbols.typ"
  ],
  short-titles: (),
  code-theme: read("_code.tmTheme", encoding: none),
  bibliography-style: read("_iso690-numeric.csl", encoding: none),
  // Po dodaniu pierwszego źródła do `_bibliography.bib` zastąp `none`:
  bibliography-source: read("_bibliography.bib", encoding: none),
  // bibliography-source: none,
  // appendices: [
  //   #include "appendices/A_appendix.typ"
  // ],
)

#include "chapters/1_introduction.typ"
#include "chapters/2_methodology.typ"
#include "chapters/3_results.typ"
#include "chapters/4_summary.typ"
