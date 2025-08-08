.PHONY: watch compile open

watch:
	typst watch src/main.typ

compile: src/main.typ
	typst compile src/main.typ

open: compile
	open src/main.pdf