INPUT := main
LC := pdflatex -quiet # LaTeX compiler
BC := bibtex -terse # BibTeX compiler

.PHONY: clean default

default: clean
	$(LC) $(INPUT)
	-$(BC) $(INPUT)
	$(LC) $(INPUT)
	$(LC) $(INPUT)

clean:
	rm -f $(INPUT).aux $(INPUT).bbl $(INPUT).blg $(INPUT).lof $(INPUT).log $(INPUT).lot $(INPUT).out $(INPUT).toc config.aux
