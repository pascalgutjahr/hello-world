all: build/mathepascal.pdf build/pgraphics.pdf build/ptable.pdf

build/mathepascal.pdf: mathepascal.tex | build
	lualatex --output-directory=build/ mathepascal.tex

build/pgraphics.pdf: pgraphics.tex | build
	lualatex --output-directory=build/ pgraphics.tex

build/ptable.pdf: ptable.tex | build
	lualatex --output-directory=build/ ptable.tex

build:
	mkdir -p build

clean:
	rm -rf build
