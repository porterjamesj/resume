ifeq ($(DOCKER),1)
        CMD = docker run -it -v $(CURDIR):/source porterjamesj/pandoc
else
        CMD = pandoc
endif

FLAGS = -f markdown -V geometry:margin=0.3in -V urlcolor:maroon -V linestretch:0.9 -V fontsize:5pt -V pagestyle=empty --template template.latex

RESUME_SECTIONS := $(shell cat resume_sections | sed 's/^/sections\//')
CV_SECTIONS := $(shell cat cv_sections | sed 's/^/sections\//')

cv.pdf: $(CV_SECTIONS)
	$(CMD) $(FLAGS) $(CV_SECTIONS)  -o cv.pdf

resume.pdf: $(RESUME_SECTIONS)
	$(CMD) $(FLAGS) $(RESUME_SECTIONS) -o resume.pdf

all: cv.pdf resume.pdf
.PHONY : pdf

clean:
	rm *.pdf
.PHONY : clean
