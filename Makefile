# 编译《刻舟记》。需要 TeX Live / MacTeX(含 ctex 与 fandol 字体)。
TEX = kezhouji.tex
PDF = $(PDF_NAME)
PDF_NAME = kezhouji.pdf

.PHONY: all clean distclean

all: $(PDF_NAME)

$(PDF_NAME): $(TEX)
	latexmk -xelatex -interaction=nonstopmode $(TEX)

clean:
	latexmk -c

distclean:
	latexmk -C
