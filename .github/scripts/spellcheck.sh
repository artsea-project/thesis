#!/usr/bin/env bash
# Sprawdzenie pisowni treści pracy (hunspell, słowniki pl_PL + en_GB).
#
# Użycie:
#   .github/scripts/spellcheck.sh            # raport, kod wyjścia 0
#   .github/scripts/spellcheck.sh --strict   # kod wyjścia 1, gdy są literówki
#
# Słowa uznane za poprawne dopisuj do .github/dictionary.txt (jedno na wiersz).

set -euo pipefail

cd "$(dirname "$0")/../.."

DICTS="pl_PL,en_GB"
PERSONAL=".github/dictionary.txt"
STRICT=0
[ "${1:-}" = "--strict" ] && STRICT=1

# main.typ i template.typ pomijamy, bo to sam kod składu.
mapfile -t FILES < <(find chapters pages appendices -name '*.typ' 2>/dev/null | sort)

if [ ${#FILES[@]} -eq 0 ]; then
  echo "Nie znaleziono plików .typ do sprawdzenia."
  exit 0
fi

strip_typst() {
  perl -0777 -pe '
    s{/\*.*?\*/}{ }gs;                 # komentarze blokowe
    s{^[ \t]*//.*$}{}gm;               # komentarze pełnowierszowe (TODO itp.)
    s{[ \t]//.*$}{}gm;                 # komentarze na końcu wiersza
    s{```.*?```}{ }gs;                 # bloki kodu
    s{`[^`]*`}{ }gs;                   # kod w linii
    s{\$[^\$]*\$}{ }gs;                # wzory matematyczne
    s{https?://\S+}{ }g;               # adresy URL
    s{<[A-Za-z0-9_:.-]+>}{ }g;         # etykiety, np. <chapter-introduction>
    s{@[A-Za-z0-9_:.-]+}{ }g;          # cytowania, np. @klucz
    s{^[ \t]*\#(import|include|show|set|let|bibliography|figure|grid|table)\b.*$}{}gm;
    s{\#[a-zA-Z][\w.-]*}{ }g;          # pozostałe wywołania funkcji
    s{^[ \t]*=+[ \t]*}{}gm;            # znaczniki nagłówków
    s{[{}\[\]()|*_]}{ }g;              # pozostała interpunkcja składni
    s{\x5c}{ }g;                       # ukośniki wsteczne
  ' "$1"
}

TOTAL=0
REPORT="$(mktemp)"
# Hunspell nie zna komentarzy w słowniku osobistym, więc podajemy mu wersję oczyszczoną.
DICTFILE="$(mktemp)"
trap 'rm -f "$REPORT" "$DICTFILE"' EXIT
[ -f "$PERSONAL" ] && grep -v -e '^\s*#' -e '^\s*$' "$PERSONAL" >"$DICTFILE"

for f in "${FILES[@]}"; do
  BAD="$(strip_typst "$f" | hunspell -l -i UTF-8 -d "$DICTS" -p "$DICTFILE" | sort -u)" || true
  [ -z "$BAD" ] && continue

  echo "$f:" >>"$REPORT"
  while IFS= read -r word; do
    TOTAL=$((TOTAL + 1))
    LINES="$(grep -n -w -F "$word" "$f" | cut -d: -f1 | paste -sd, -)"
    echo "  wiersz ${LINES:-?}: $word" >>"$REPORT"
  done <<<"$BAD"
  echo >>"$REPORT"
done

if [ "$TOTAL" -eq 0 ]; then
  echo "Pisownia: brak zastrzeżeń w ${#FILES[@]} plikach."
  [ -n "${GITHUB_STEP_SUMMARY:-}" ] && echo "### Pisownia: brak zastrzeżeń" >>"$GITHUB_STEP_SUMMARY"
  exit 0
fi

echo "Pisownia: $TOTAL podejrzanych słów."
echo
cat "$REPORT"

if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
  {
    echo "### Pisownia: $TOTAL podejrzanych słów"
    echo
    echo "Słowa poprawne dopisz do \`$PERSONAL\`."
    echo
    echo '```'
    cat "$REPORT"
    echo '```'
  } >>"$GITHUB_STEP_SUMMARY"
fi

[ "$STRICT" -eq 1 ] && exit 1
exit 0
