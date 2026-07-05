## Makefile
#
#
# Make by default will make first target
# First compile pin and then final document

all: cv

cv:
	pdflatex resume.tex
	pdflatex resume.tex
	pdflatex resume.tex

.PHONY: clean
clean:
	rm *.out *.aux  *.log

# To remove pdf metadata use the following programs
# https://www.pdflabs.com/docs/pdftk-cli-examples/
