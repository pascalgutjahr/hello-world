all: build/mathepascal.pdf /
	 	build/pgraphics.pdf /
	 	build/ptable.pdf /
	 	build/biblatex.pdf /
	 	build/footnote.pdf /
	 	build/references.pdf
#der Befehl --output-directory=build sorgt dafür, dass die Dateien im build Ordner landen
#mit rm -rf build werden die Dateien somit direkt wieder gelöscht, wenn man sich die Dateien
#jedoch anzeigen lassen möchte, so muss man den output Befehl einfach weglassen
#oder man muss open build/<Daeteiname> eingeben, da die Datei ja im build Ordner liegt

build/mathepascal.pdf: mathepascal.tex | build
	lualatex --output-directory=build mathepascal.tex

build/pgraphics.pdf: pgraphics.tex | build
	lualatex --output-directory=build pgraphics.tex

build/ptable.pdf: ptable.tex | build
	lualatex --output-directory=build ptable.tex

build/biblatex.pdf: biblatex.tex | build
	lualatex --output-directory=build biblatex.tex
	biber --output-directory=build biblatex.bcf
	lualatex --output-directory=build biblatex.tex

build/footnote.pdf: footnote.tex | build
	lualatex --output-directory=build footnote.tex

build/references.pdf: references.tex | build
	lualatex --output-directory=build references.tex

build:
	mkdir -p build

clean:
	rm -rf build
