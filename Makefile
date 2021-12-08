.PHONY: diagrams

DIAGRAMS_DIR := ./data/diagrams

diagrams:
	make -C ${DIAGRAMS_DIR} all
bachelor: diagrams
	xelatex sample-bachelor.tex
	-bibtex  sample-bachelor.aux
	xelatex sample-bachelor.tex
	xelatex sample-bachelor.tex
master: diagrams
	xelatex sample-master.tex
	-bibtex  sample-master.aux
	xelatex sample-master.tex
	xelatex sample-master.tex
kaitireport: diagrams
	xelatex sample-kaitireport.tex
	-bibtex  sample-kaitireport.aux
	xelatex sample-kaitireport.tex
	xelatex sample-kaitireport.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
	make -C ${DIAGRAMS_DIR} clean
depclean: clean
	rm -rf *.pdf
