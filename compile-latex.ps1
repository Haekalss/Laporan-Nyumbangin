Write-Host "Cleaning auxiliary files..."
Remove-Item -Path bukped.aux, bukped.log, bukped.toc, bukped.lof, bukped.lot, bukped.out, bukped.bbl, bukped.blg, bukped.fls, bukped.fdb_latexmk -ErrorAction SilentlyContinue

Write-Host "Compiling bukped.tex (Pass 1/3)..."
pdflatex -interaction=nonstopmode bukped

Write-Host "Running bibtex..."
bibtex bukped

Write-Host "Compiling bukped.tex (Pass 2/3)..."
pdflatex -interaction=nonstopmode bukped

Write-Host "Compiling bukped.tex (Pass 3/3)..."
pdflatex -interaction=nonstopmode bukped

Write-Host ""
Write-Host "Done! Output is bukped.pdf"
Write-Host "Generated: Table of Contents, List of Figures, List of Tables, Bibliography"
