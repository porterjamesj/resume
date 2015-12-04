ifeq ($(DOCKER),1)
        CMD = docker run -it -v $(CURDIR):/source porterjamesj/pandoc
else
        CMD = pandoc
endif

FLAGS = -f markdown -V geometry:margin=0.5in -V urlcolor:maroon -V linestretch:0.8 -V fontsize:5pt --template template.latex

%.pdf: %.md
	$(CMD) $(FLAGS) $< -o $@

all: resume.pdf resume_short.pdf
.PHONY : pdf

clean:
	rm *.pdf
.PHONY : clean
