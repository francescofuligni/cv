.PHONY: pdf watch

PDF = Francesco_Maria_Fuligni_CV.pdf

pdf:
	typst compile main.typ $(PDF)

watch:
	typst watch main.typ $(PDF)

