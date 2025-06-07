# Makefile for compiling LaTeX document with bibliography

TEX = main
LATEX = pdflatex
BIBTEX = bibtex

all: $(TEX).pdf

$(TEX).pdf: $(TEX).tex
	$(LATEX) $(TEX).tex
	$(BIBTEX) $(TEX)
	$(LATEX) $(TEX).tex
	$(LATEX) $(TEX).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.gz $(TEX).pdf

.PHONY: all clean

