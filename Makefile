NAME  := design_ubuntu

${NAME}.pdf:${NAME}.tex
	xelatex $<
	xelatex $<
	evince ${NAME}.pdf
	rm -f *.toc *.log *.idx *.ind *.aux *.loa *.out *~ *.dvi */*.bak *.bbl *.blg
	rm -f *.tex.bak
	rm -f *.dvi *.ps
really-clean: clean
	rm *.pdf
