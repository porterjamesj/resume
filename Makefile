pdf:
	pandoc -f markdown -V geometry:margin=1in --template template.latex --latex-engine=xelatex --variable urlcolor=maroon resume.md -o resume.pdf
