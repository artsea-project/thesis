.PHONY: build watch clean

build:
	typst compile --font-path fonts main.typ

watch:
	typst watch --font-path fonts main.typ

clean:
	rm -f main.pdf
