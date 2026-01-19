Remove-Item -Path bukped.aux, bukped.log, bukped.toc, bukped.out, bukped.bbl, bukped.blg -ErrorAction SilentlyContinue
pdflatex -interaction=nonstopmode bukped.tex
