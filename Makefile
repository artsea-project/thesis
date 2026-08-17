.PHONY: build watch spell clean

build:
	typst compile --font-path fonts main.typ

watch:
	typst watch --font-path fonts main.typ

spell:
	bash .github/scripts/spellcheck.sh

clean:
	rm -f main.pdf
