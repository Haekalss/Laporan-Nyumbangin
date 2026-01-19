@echo off
taskkill /F /IM pdflatex.exe
del /Q *.aux *.log *.toc *.out *.bbl *.blg
pdflatex -interaction=nonstopmode bukped.tex
bibtex bukped
pdflatex -interaction=nonstopmode bukped.tex
pause
