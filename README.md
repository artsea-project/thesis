# Praca inżynierska — ArtSea

TODO

## Wymagania

- [Typst](https://typst.app/) 0.14 lub nowszy,
- `make` (opcjonalnie).

## Kompilacja

```sh
make build
# albo bez make:
typst compile --font-path fonts main.typ
```

Podgląd aktualizowany przy zapisie:

```sh
make watch
```

Wynik zostanie zapisany jako `main.pdf` i nie jest śledzony przez Git.

## CI

Po każdym pushu i w każdym pull requeście GitHub Actions sprawdza, że:

1. praca się kompiluje, czyli job kończy się błędem, jeżeli `typst compile`
   zwróci błąd; gotowy PDF nie jest nigdzie zapisywany, buduj go u siebie przez
   `make build`,
2. pisownia nie budzi zastrzeżeń (hunspell, słowniki `pl_PL` i `en_GB`), a wynik
   trafia do podsumowania joba i **nie** blokuje merge'a.

Słowa błędnie zgłaszane jako literówki (nazwy własne, skróty, terminy techniczne)
dopisuj do `.github/dictionary.txt`. Sprawdzenie lokalnie, jeśli masz hunspella:

```sh
make spell
```

## Struktura

- `main.typ` — punkt wejścia i kolejność części dokumentu,
- `template.typ` — reguły składu dostarczone przez formatkę,
- `pages/` — streszczenia, wykaz symboli i docelowo strony z MojaPG,
- `chapters/` — główne rozdziały pracy,
- `appendices/` — dodatki,
- `img/` — rysunki i wykresy,
- `fonts/` — czcionki wymagane przez formatkę,
- `_bibliography.bib` — baza źródeł BibLaTeX,
- `_iso690-numeric.csl` — styl bibliografii ISO 690,
- `_code.tmTheme` — motyw listingów kodu.

## Pierwsze kroki

1. Pobierz stronę tytułową i oświadczenie z MojaPG zgodnie z `pages/README.md`.
2. Uzupełnij polskie i angielskie streszczenie oraz słowa kluczowe.
3. Zastąp komentarze `TODO` treścią pracy.
4. Dodaj pierwsze źródło do `_bibliography.bib`, włącz `bibliography-source` zgodnie z komentarzem w `main.typ`, a następnie cytuj źródła zapisem `@klucz`.
5. Usuń dodatek z `main.typ`, jeżeli nie będzie potrzebny.

Pliku `template.typ` najlepiej nie zmieniać bez potrzeby — treść i struktura pracy znajdują się w pozostałych plikach.

---

Bazowane na szablonie Latex z https://eti.pg.edu.pl/studenci/dyplomy
