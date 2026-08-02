// ============================================================
// Wersja formatki: 3.0 (port Typst)
// Oryginał: 25.11.2025 r.
// Licencja: użytek wewnętrzny WETI PG.
//
// Ten plik zawiera wyłącznie wielokrotnego użytku reguły składu.
// Dokument korzystający z szablonu powinien używać standardowych
// elementów Typst; jedynym publicznym interfejsem jest funkcja thesis.
// ============================================================

// Wyrównany wykaz symboli użytych we wzorze. Stałe szerokości kolumn
// odpowiadają pozycjom w formatce referencyjnej, a treść wierszy pozostaje
// zwykłą zawartością matematyczną i tekstową.
#let variable-descriptions(rows) = {
  let cells = rows.map(row => (row.at(0), [-], row.at(1))).flatten()
  block(above: 3.8pt, below: 10.7pt, width: 100%)[
    #v(8pt)
    #pad(left: 12.5mm)[
      #grid(
        columns: (60.5pt, 15.3pt, 1fr),
        column-gutter: 0pt,
        row-gutter: 8.4pt,
        ..cells,
      )
    ]
  ]
}

// Standardowe zestawienie czterokolumnowe: parametr, opis, wartość,
// jednostka. Geometria odpowiada tabularx z formatki LaTeX i dzięki temu
// autor nie dobiera ręcznie szerokości w każdej tabeli technicznej.
#let technical-table(header, ..cells) = table(
  columns: (30%, 40%, 17%, 13%),
  table.header(..header),
  ..cells,
)

#let thesis(
  title-pages: (),
  front-matter: none,
  short-titles: (),
  code-theme: auto,
  bibliography-style: "iso-690-numeric",
  bibliography-source: none,
  appendices: none,
  body,
) = {
  let main-numbering(..numbers) = numbering("1.1.", ..numbers.pos())
  // Lider pojawia się dopiero wtedy, gdy dostępny odcinek jest dość długi.
  // Zapobiega to pojedynczym kropkom przy tytułach dochodzących do numeru.
  let dotted-fill(min-width: 28pt) = layout(size => {
    if size.width >= min-width {
      pad(right: 4pt, repeat([.], gap: 7pt, justify: true))
    }
  })
  let dot-leader = dotted-fill()
  let list-dot-leader = dotted-fill(min-width: 70pt)

  // Numer rozdziału jest kodowany w setkach licznika obiektu. Dzięki temu
  // podpis i automatyczny wykaz zachowują ten sam numer rozdziałowy.
  let chapterwise-number(number, parenthesized: false) = {
    let appendix = number >= 10000
    let encoded = if appendix { number - 10000 } else { number }
    let chapter = calc.floor(encoded / 100)
    let local = calc.rem(encoded, 100)
    let pattern = if appendix {
      if parenthesized { "(A.1)" } else { "A.1" }
    } else {
      if parenthesized { "(1.1)" } else { "1.1" }
    }
    numbering(pattern, chapter, local)
  }

  set document(author: "", keywords: ())
  set page(
    paper: "a4",
    binding: left,
    margin: (
      top: 2.5cm,
      bottom: 2.5cm,
      inside: 3.5cm,
      outside: 2.5cm,
    ),
    footer: context align(center, counter(page).display("1")),
  )
  set text(
    font: ("Arial", "Latin Modern Math"),
    // LaTeX-owe 10 pt to 9,96264 punktu postscriptowego używanego przez Typst.
    size: 9.96264pt,
    lang: "pl",
    region: "PL",
  )
  set par(
    justify: true,
    // Bez globalnej korekty międzyznakowej: Typst reguluje odstępy między
    // wyrazami, a polskie dzielenie pozostaje awaryjnym mechanizmem składu.
    leading: 0.84em,
    spacing: 0.8em,
    first-line-indent: (amount: 1.25cm, all: false),
  )
  set enum(
    numbering: "1.",
    indent: 0.4cm,
    body-indent: 0.5em,
    spacing: 1.7em,
  )
  set list(indent: 0.4cm, body-indent: 0.5em, spacing: 1.7em)
  set footnote.entry(separator: line(length: 40%, stroke: 0.5pt))

  set heading(numbering: main-numbering, supplement: none)
  set math.equation(
    numbering: number => text(
      size: 9.96264pt,
      chapterwise-number(number, parenthesized: true),
    ),
    supplement: none,
  )
  // Typst składa matematykę optycznie mniejszą niż unicode-math przy tym
  // samym nominalnym stopniu. Jedna reguła obejmuje wzory w tekście i bloku.
  show math.equation: set text(size: 11.8pt)
  set math.cases(gap: 0.85em)
  set figure(numbering: number => chapterwise-number(number))

  // Domyślny styl tabel danych. Liczba i szerokości kolumn pozostają
  // częścią treści, natomiast typografia, wyrównanie i linie są tutaj.
  set table(
    align: (x, _) => if x < 2 { left } else { center },
    inset: (x: 4pt, y: 4.5pt),
    stroke: (_, y) => if y == 0 { (bottom: 0.8pt) } else { none },
  )
  show table.cell: set text(hyphenate: false)
  show table.cell: set par(justify: false, first-line-indent: 0pt, spacing: 0pt)
  show table.cell.where(y: 0): set text(weight: "bold")

  // Zwykłe zestawienia symboli i definicji potrzebują jawnego odstępu
  // między wierszami; bez niego wyższe glify matematyczne nachodzą na tekst.
  // Jednolity odstęp wszystkich siatek jest częścią szablonu, a nie treści.
  // 7pt zachowuje separację akcentów wektorowych bez rozbijania strony 5.
  set grid(column-gutter: 1em, row-gutter: 7pt)

  set bibliography(style: bibliography-style)
  // Ten sam styl CSL odpowiada za bibliografię i cytowania numeryczne.
  // Zapobiega to rozjazdom separatorów, zakresów i lokalizatorów.
  set cite(style: bibliography-style)

  show link: it => text(
    fill: if type(it.dest) == str { blue } else { black },
    it,
  )

  // Rozdziały zawsze trafiają do spisu treści, także w części wstępnej.
  show heading.where(level: 1): set heading(outlined: true)

  // Odpowiednik LaTeX-owego \paragraph nie jest numerowany ani ujmowany
  // w spisie treści. Dzięki temu w treści wystarcza skrót `====`.
  show heading.where(level: 4): set heading(numbering: none, outlined: false)

  // Rozdział: 12 pt, pogrubienie, wersaliki.
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(32pt)
    let appendix = it.numbering != none and it.numbering != main-numbering
    if it.numbering != none {
      context {
        let chapter = counter(heading).get().first()
        let base = chapter * 100 + if appendix { 10000 } else { 0 }
        counter(math.equation).update(base)
        counter(figure.where(kind: image)).update(base)
        counter(figure.where(kind: table)).update(base)
        counter(figure.where(kind: raw)).update(base)
      }
    }
    let short-title = if it.has("label") {
      short-titles.find(item => item.label == it.label)
    } else {
      none
    }
    let display-body = if short-title != none { short-title.title } else { it.body }
    block(above: 0pt, below: 15pt, breakable: false)[
      #set text(size: 11.95517pt, weight: "bold")
      #upper([
        #if it.numbering != none {
          context [
            #counter(heading).display(it.numbering)
            #h(if appendix { 0em } else { 1em })
          ]
        }
        #display-body
      ])
    ]
  }

  // Podrozdział: 10 pt, pogrubienie i kursywa.
  show heading.where(level: 2): it => block(
    above: 24pt,
    below: 14pt,
    breakable: false,
  )[
    #set text(size: 9.96264pt, weight: "bold", style: "italic")
    #if it.numbering != none {
      context [#counter(heading).display(it.numbering) #h(0.5em)]
    }
    #it.body
  ]

  // Podpodrozdział: 10 pt, kursywa.
  show heading.where(level: 3): it => block(
    above: 24pt,
    below: 14pt,
    breakable: false,
  )[
    #set text(size: 9.96264pt, weight: "regular", style: "italic")
    #if it.numbering != none {
      context [#counter(heading).display(it.numbering) #h(0.5em)]
    }
    #it.body
  ]

  // Odpowiednik LaTeX-owego \paragraph: niższy nagłówek tekstowy.
  show heading.where(level: 4): it => block(
    above: 29pt,
    below: 17pt,
    breakable: false,
  )[
    #set text(size: 9.96264pt, weight: "bold")
    #if it.numbering != none {
      context [#counter(heading).display(it.numbering) #h(0.5em)]
    }
    #it.body
  ]

  show figure: set block(above: 6pt, below: 6pt)
  show figure.where(kind: image): set block(above: 16pt, below: 14.5pt)
  show figure.where(kind: image): set figure(supplement: [Rys.])
  show figure.where(kind: table): set figure(supplement: [Tabela.])
  show figure.where(kind: raw): set figure(supplement: [Listing])
  show figure.where(kind: raw): set block(breakable: true)
  show figure.where(kind: raw): set grid(row-gutter: 0pt)
  show figure.where(kind: raw): set par(leading: 0em, spacing: 0pt)
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.caption: set text(size: 8.96638pt)
  show figure.caption: set block(above: 6pt, below: 6pt)
  show figure.caption: it => context {
    if it.numbering != none {
      text(weight: "bold", it.supplement + [ ] + it.counter.display(it.numbering))
      it.separator
    }
    it.body
    if it.kind == table { v(6pt) }
  }
  set figure.caption(separator: [. ])
  show math.equation.where(block: true): set block(above: 6pt, below: 6pt)

  // Wszystkie blokowe listingi korzystają z jednego układu. Każdy wiersz
  // źródłowy ma jeden numer, a jego fizyczne kontynuacje otrzymują wcięcie
  // i znak ↪ bez modyfikowania kodu autora.
  let code-size = 8.5pt
  let continuation-step = code-size * 1.35
  let continuation-marker-size = 6pt
  let continuation-marker-drop = 5pt
  set raw(theme: code-theme)
  show raw: set text(font: "DejaVu Sans Mono", size: code-size)
  show raw.where(block: true): set text(size: code-size)
  show raw.where(block: true): it => [
    #block(width: 100%, stroke: 0.5pt)[
      #pad(x: 6pt, y: 6pt)[
        #grid(
          columns: (1fr,),
          row-gutter: 7pt,
          ..it.lines.map(source-line => block(width: 100%)[
            #place(top + left, dx: -35pt)[
              #box(width: 24pt)[
                #align(
                  right + top,
                  text(
                    fill: luma(40%),
                    size: 6.5pt,
                    str(source-line.number),
                  ),
                )
              ]
            ]
            #layout(available => {
              let rendered-line = align(left, block(width: available.width)[
                #show raw.line: set par(
                  leading: 0.9em,
                  spacing: 0pt,
                  hanging-indent: 24pt,
                )
                #source-line
              ])
              let rendered-size = measure(
                rendered-line,
                width: available.width,
              )
              let physical-lines = calc.ceil(
                rendered-size.height / continuation-step,
              )
              let markers = range(1, physical-lines).map(continuation =>
                place(
                  top + left,
                  dx: 2pt,
                  dy: continuation * continuation-step
                    + continuation-marker-drop,
                )[
                  #show math.equation: set text(size: continuation-marker-size)
                  $arrow.r.hook$
                ]
              )
              [#{markers.join()} #rendered-line]
            })
          ]),
        )
      ]
    ]
    #v(20pt)
  ]

  show bibliography: set heading(numbering: none, outlined: true)
  show bibliography: set par(
    leading: 0.8em,
    spacing: 1.3em,
    first-line-indent: 0pt,
  )

  // Treść i kolejność sekcji dokumentu. Main.typ przekazuje wyłącznie
  // zawartość i ścieżki; wszystkie reguły składu pozostają w szablonie.
  for title-page in title-pages {
    page(paper: "a4", margin: 0pt, footer: none)[
      #set image(width: 100%, height: 100%, fit: "stretch")
      #title-page
    ]
  }

  if front-matter != none [
    #set heading(numbering: none, outlined: false)
    #front-matter
  ]

  heading(level: 1, numbering: none, outlined: true)[Spis treści]
  v(8pt)
  {
    show outline.entry.where(level: 1): set text(weight: "bold")
    show outline.entry.where(level: 1): set outline.entry(fill: none)
    show outline.entry.where(level: 2): set outline.entry(fill: dot-leader)
    show outline.entry.where(level: 3): set outline.entry(fill: dot-leader)
    show outline.entry.where(level: 1): set block(above: 18pt, below: 0pt)
    show outline.entry.where(level: 2): set block(above: 8.5pt, below: 0pt)
    show outline.entry.where(level: 3): set block(above: 8.5pt, below: 0pt)
    outline(
      title: none,
      depth: 3,
      indent: level => if level == 0 {
        0pt
      } else if level == 1 {
        17.712pt
      } else {
        40.626pt
      },
    )
  }

  // Treściowe wyróżnienie pogrubieniem pozostaje w rodzinie Arial.
  // Pozostałe elementy (nagłówki, podpisy, nagłówki tabel) nadal
  // korzystają ze swoich istniejących reguł.
  {
    show strong: it => text(
      font: "Arial",
      weight: "bold",
      it.body,
    )
    body
  }

  if bibliography-source != none [
    #bibliography(bibliography-source, title: [Wykaz literatury]) <page-bibliography>
  ]

  heading(level: 1, numbering: none, outlined: true)[Wykaz rysunków]
  v(10pt)
  {
    show outline.entry: set outline.entry(fill: list-dot-leader)
    show outline.entry: it => context {
      let location = it.element.location()
      let number = counter(figure.where(kind: image)).at(location).first()
      link(location, it.indented([#chapterwise-number(number).], it.inner()))
    }
    outline(
      title: none,
      target: figure.where(kind: image),
      indent: level => if level == 0 { 17.712pt } else { 0pt },
    )
  }

  heading(level: 1, numbering: none, outlined: true)[Wykaz tabel]
  v(10pt)
  {
    show outline.entry: set outline.entry(fill: list-dot-leader)
    show outline.entry: it => context {
      let location = it.element.location()
      let number = counter(figure.where(kind: table)).at(location).first()
      link(location, it.indented([#chapterwise-number(number).], it.inner()))
    }
    outline(
      title: none,
      target: figure.where(kind: table),
      indent: level => if level == 0 { 17.712pt } else { 0pt },
    )
  }

  if appendices != none {
    set page(
      margin: (
        top: 2.5cm,
        bottom: 2.25cm,
        inside: 3.5cm,
        outside: 2.5cm,
      ),
      footer: context move(
        dy: -0.1cm,
        align(center, counter(page).display("1")),
      ),
    )
    let appendix-numbering(..numbers) = {
      let values = numbers.pos()
      if values.len() == 1 {
        [Dodatek #numbering("A", ..values):]
      } else {
        numbering("A.1.", ..values)
      }
    }
    counter(heading).update(0)
    set heading(numbering: appendix-numbering)
    appendices
  }
}
