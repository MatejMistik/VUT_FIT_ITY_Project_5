all: main.pdf  
clean: 
	rm main.snm main.aux main.log  main.pdf main.out main.nav main.toc
%.dvi: %.tex
	latex $<
	latex $<
%.ps: %.dvi
	dvips -t a4 $<
%.pdf: %.ps
	ps2pdf $<
zip:
	zip ity_proj5.zip main.tex  Makefile 

