.PHONY: watch open

INPUT=src/main.typ
OUTPUT=presentation.pdf

watch: compile
	typst watch $(INPUT) $(OUTPUT)

open: compile
	open $(OUTPUT)

# compile the main if any changes are made to the source files
compile: src/*.typ
	typst compile $(INPUT) $(OUTPUT)

# compile mermaid figures to SVG
src/img/%.svg: src/img/%.md
	mmdc -i $< -o $@ -t neutral --pdfFit

# compile all mermaid files in img folder
figures: $(patsubst src/img/%.md,src/img/%.svg,$(wildcard src/img/*.md))
	echo "Figures are up to date."
