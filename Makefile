ifeq ($(DOCKER),1)
        CMD = docker run -it -v $(CURDIR):/source porterjamesj/pandoc
else
        CMD = pandoc
endif

FLAGS = -f markdown -V geometry:margin=0.5in -V urlcolor:maroon -V linestretch:0.8 -V fontsize:5pt --template template.latex

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
