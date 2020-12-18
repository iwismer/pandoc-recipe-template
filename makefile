TEX = pandoc
TEMPLATE = recipe.tex
FLAGS = --pdf-engine=xelatex -f markdown

pdf/%.pdf : yaml/%.yaml $(TEMPLATE)
	mkdir -p pdf
	$(TEX) $< -o $@ --template=$(TEMPLATE) $(FLAGS)

pdf/%.pdf : yaml/%.yml $(TEMPLATE)
	mkdir -p pdf
	$(TEX) $< -o $@ --template=$(TEMPLATE) $(FLAGS)

all: $(addprefix pdf/, $(notdir $(addsuffix .pdf, $(basename $(wildcard yaml/*.yaml) $(wildcard yaml/*.yml)))))

.PHONY: clean
clean :
	rm *.pdf
