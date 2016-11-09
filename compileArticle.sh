cp -u ../Bibtex/PhDMendeley.bib/library.bib .
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-ErrorPlots.png images/Pr04Val-ErrorPlots.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-EnergyBalanceOverallAve4Plots_.png images/Pr04Val-EnergyBalanceOverallAve4Plots_.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04NoVeg-ErrorPlots.png images/Pr04NoVeg-ErrorPlots.png


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
