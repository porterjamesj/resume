pdf:
	pandoc -f markdown -V geometry:margin=1in --template template.latex --latex-engine=xelatex --variable mainfont='Adobe Caslon Pro' --variable sansfont='Myriad Pro' --variable urlcolor=maroon resume.md -o resume.pdf
