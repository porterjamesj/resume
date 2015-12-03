ARGS = -f markdown -V geometry:margin=0.5in --template template.latex --latex-engine=xelatex --variable urlcolor=maroon resume.md -o resume.pdf

pdf:
	pandoc $(ARGS)
pdf-docker:
	docker run -it -v $(CURDIR):/source porterjamesj/pandoc $(ARGS)
