ifeq ($(DOCKER),1)
        CMD = docker run -it -v $(CURDIR):/source porterjamesj/pandoc
else
        CMD = pandoc
endif

FLAGS = -f markdown -V geometry:margin=0.5in -V urlcolor:maroon -V linestretch:0.8 -V fontsize:5pt --template template.latex

SHORT_SECTION_NAMES = 01_header.md 02_experience_header.md 03_cdis_gdc.md 04_stripe.md 05_cdis_student.md 07_recurse.md 10_education_header.md 11_uchicago.md 13_skills_header.md 15_computational_skills.md 17_misc.md

SHORT_SECTION_PATHS = $(SHORT_SECTION_NAMES:%.md=sections/%.md)

cv.pdf: $(wildcard sections/*.md)
	$(CMD) $(FLAGS) sections/*.md -o cv.pdf

resume.pdf: $(SHORT_SECTION_PATHS)
	$(CMD) $(FLAGS) $(SHORT_SECTION_PATHS) -o resume.pdf

all: cv.pdf resume.pdf
.PHONY : pdf

clean:
	rm *.pdf
.PHONY : clean
