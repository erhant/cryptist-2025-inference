.PHONY: open watch compile figures clean

INPUT=src/main.typ
OUTPUT=presentation.pdf

# Typst source files
TYPST_FILES = $(wildcard src/*.typ)
# Mermaid markdown files
MERMAID_MD_FILES = $(wildcard src/img/*.md)
# SVG files that were generated from Mermaid
EXISTING_SVG_FILES = $(wildcard src/img/*-[0-9].svg src/img/*-[0-9][0-9].svg)

# Main compilation target
compile: $(OUTPUT)

# The PDF depends on all Typst files and needs figures to be up to date
$(OUTPUT): $(TYPST_FILES) figures
	typst compile $(INPUT) $(OUTPUT)

# Rule to generate SVG files from Mermaid markdown
# This creates a timestamp file to track when figures were last built
src/img/.figures_timestamp: $(MERMAID_MD_FILES)
	@for md_file in $(MERMAID_MD_FILES); do \
		echo "Compiling $$md_file..."; \
		mmdc -i "$$md_file" -o "$${md_file%.md}.svg" -t neutral --pdfFit; \
	done
	@touch src/img/.figures_timestamp

# Convenience target to build all figures
figures: src/img/.figures_timestamp

open: $(OUTPUT)
	open $(OUTPUT)

watch:
	typst watch $(INPUT) $(OUTPUT)

clean:
	rm -f $(OUTPUT) $(EXISTING_SVG_FILES) src/img/.figures_timestamp
