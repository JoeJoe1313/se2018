TOPICS := $(patsubst topics/%,topics/%/index.pdf,$(wildcard topics/*))
COMPILER := latexmk -cd -interaction=nonstopmode -bibtex

.PHONY: all clean

all: $(TOPICS)

topics/%/index.pdf: topics/%/index.tex topics/%/references.bib common/*.sty
	$(COMPILER) $(<D)/index.tex -pdf

clean:
	@:$(foreach topic, $(wildcard topics/*), \
		$(COMPILER) $(topic)/index.tex -C; \
		rm -fv $(topic)/*.run.xml; \
	)
