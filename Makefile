.PHONY: all

all:		escv.pdf

escv.pdf:	escv.tex force
			latexmk -pdf $<

force:		;

.PHONY: clean

clean:
			latexmk -C
			rm -f *.auxlock *.snm *.nav *.out *.fdb_latexmk *.vrb *.table *.gnuplot *-blx.bib *.mtc* *.maf *.bbl *.run.xml 
