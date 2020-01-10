TEX = lualatex
BIB = bibtex

.PHONY: clean default all

all: presentation

presentation:
	$(TEX) presentation.tex
	$(BIB) presentation
	$(TEX) presentation.tex
	$(TEX) presentation.tex

clean:
	rm *.aux *.bbl *.blg *.log *.out *.toc presentation.pdf

