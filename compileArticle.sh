cp -u ../Bibtex/PhDMendeley.bib/library.bib .
#cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-ErrorPlots.png images/Pr04Val-ErrorPlots.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-EnergyBalanceOverallAve4Plots_.png images/Pr04Val-EnergyBalanceOverallAve4Plots_.png
#cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04NoVeg-ErrorPlots.png images/Pr04NoVeg-ErrorPlots.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/PrestonBase8/CentralBuildingHeights.png images/CentralBuildingHeights.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-EnergyBalanceOverallAve_.png images/Pr04Val-EnergyBalanceOverallAve_.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04NoVeg-EnergyBalanceOverallAve_.png images/Pr04NoVeg-EnergyBalanceOverallAve_.png
cp -u /home/kerryn/Documents/Work/Data/PrestonData/PrestonWindrose.png images/PrestonWindrose.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-ErrorPlotsSquare5.png images/Pr04Val-ErrorPlots.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04NoVeg-ErrorPlotsSquare5.png images/Pr04NoVeg-ErrorPlots.png



cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMGeorgeRun5-30DaysCombinedTrees/GeorgeSt-100x100m-5m_grid_heights.png images/GeorgeSt-100x100m-5m_grid_heights.png
cp -u /home/kerryn/Documents/Work/Data/CityOfMelbourne2011-12/Gipp200x200_5mgrid_heights.png images/Gipp200x200_5mgrid_heights.png
cp -u /home/kerryn/git/Images/GippsGeorgeImages\(Coutts2015p58\).png images/GippsGeorgeImages\(Coutts2015p58\).png
cp -u /home/kerryn/git/Images/GippsGeorgeImages2\(Coutts2015p58\).png images/GippsGeorgeImages2\(Coutts2015p58\).png
cp -u "/home/kerryn/Documents/Work/Data/CityOfMelbourne2011-12/CoM locations for Kerry2.pdf" "images/CoM locations for Kerry2.pdf"
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/CentralBuildingHeights.png images/GeorgeValidationCentralBuildingHeights.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/CentralBuildingHeights.png images/GippValidationCentralBuildingHeights.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/CentralVegHeights.png images/GeorgeValidationCentralVegHeights.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/CentralVegHeights.png images/GippValidationCentralVegHeights.png
cp -u /home/kerryn/Documents/Work/Data/CityOfMelbourne2011-12/CoMTempFeb2012.png images/CoMTempFeb2012.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/GeorgeValidation-ErrorPlots-Tmrt5.png images/GeorgeValidation-ErrorPlots-Tmrt5.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/GeorgeValidation-ErrorPlots-UTCI5.png images/GeorgeValidation-ErrorPlots-UTCI5.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/GippsValidation-ErrorPlots-Tmrt5.png images/GippsValidation-ErrorPlots-Tmrt5.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/GippsValidation-ErrorPlots-UTCI5.png images/GippsValidation-ErrorPlots-UTCI5.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/TmrtOverallAve5_.png images/GeorgeValidationTmrtOverallAve5_.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/TmrtOverallAve5_.png images/GippValidationTmrtOverallAve5_.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GippValidation/UtciOverallAve5_.png images/GippValidationUtciOverallAve5_.png
cp -u /home/kerryn/Documents/Work/VTUF-Runs/CoMValidations/GeorgeValidation/TcanAgg.png images/GeorgeValidationTcanAgg.png


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
