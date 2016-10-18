cp -u ../Bibtex/PhDMendeley.bib/library.bib .

#cd /home/kerryn/git/PhDProposal/PhDProposal
##pdflatex -file-line-error -synctex=1 -interaction=errorstopmode PhDThesis.tex
bibtex VTUF-3DDesign.aux
#makeglossaries  PhDThesis
#pdflatex -file-line-error -synctex=1 -interaction=nonstopmode PhDThesis.tex

makeindex VTUF-3DDesign.nlo -s nomencl.ist -o VTUF-3DDesign.nls

pdflatex -file-line-error -synctex=1 -interaction=errorstopmode --shell-escape VTUF-3DDesign.tex
#makeindex elsarticle-template.nlo -s nomencl.ist -o elsarticle-template.nls
bibtex VTUF-3DDesign.aux



#latexmk -e "$pdflatex=q/pdflatex -synctex=1 -interaction=nonstopmode/" -pdf %.tex   ; makeindex %.nlo -s nomencl.ist -o %.nls