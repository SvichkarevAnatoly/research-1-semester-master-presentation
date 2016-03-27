SHELL := /bin/bash

texfile=svm

read:	pdf clean
	evince ${texfile}.pdf &
	
pdf:	${texfile}.tex
	pdflatex ${texfile}.tex

clean:
	rm -f ${texfile}.{ps,log,aux,out,dvi,bbl,blg}
	rm -f ${texfile}.{nav,snm,toc,vrb}

cleanall:	clean
	rm -f ${texfile}.pdf
