.PHONY: all clean cleanall view

# Main thesis file (without .tex extension)
THESIS = thesis

# Default target
all: $(THESIS).pdf

# Build the PDF
$(THESIS).pdf: $(THESIS).tex
	pdflatex $(THESIS).tex
	bibtex $(THESIS)
	pdflatex $(THESIS).tex
	pdflatex $(THESIS).tex

# Clean auxiliary files
clean:
	rm -f $(THESIS).aux $(THESIS).log $(THESIS).out $(THESIS).toc
	rm -f $(THESIS).lof $(THESIS).lot $(THESIS).bbl $(THESIS).blg
	rm -f $(THESIS).fdb_latexmk $(THESIS).fls $(THESIS).synctex.gz
	rm -f chapters/*.aux

# Clean all generated files including PDF
cleanall: clean
	rm -f $(THESIS).pdf

# View the PDF (works on most Linux systems)
view: $(THESIS).pdf
	xdg-open $(THESIS).pdf 2>/dev/null || open $(THESIS).pdf 2>/dev/null || echo "Please open $(THESIS).pdf manually"
