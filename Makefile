filename=exam2

pdf: ps
	ps2pdf ${filename}.ps

ps: dvi
	dvips -P pdf -t landscape ${filename}.dvi

dvi:
	latex ${filename}.tex
	#bibtex ${filename}
	#latex ${filename}
	#latex ${filename}

open:
	evince ${filename}.pdf &

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
