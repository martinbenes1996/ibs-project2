
all: ibs.pdf

ibs.pdf:
		pdflatex ibs.tex
		biber ibs
		pdflatex ibs.tex
		pdflatex ibs.tex

.PHONY: clean
clean:
		@echo "Cleaning generated files.";\
		rm ibs.pdf ibs.aux ibs.bcf ibs.log ibs.run.xml ibs.bbl ibs.blg 2> /dev/null > /dev/null