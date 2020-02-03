# variables
MAIN = main
TEMP = .temp
IGNORE = aux bbl bcf blg fdb_latexmk fls idx ilg ind log out run.xml toc xdv
FLAG = trash_on
OPEN = xdg-open


# public functions
help:
	@echo make tex
	@echo make clean
	@echo make show
	@echo make info

tex:
	@make untempize
	latexmk -xelatex -shell-escape $(MAIN)
	@make tempize

clean: mkdir
	@latexmk -c
	@rm -r $(TEMP)

show:
	@$(OPEN) $(MAIN).pdf

info:
	@pdfinfo $(MAIN).pdf

# private functions
tempize: mkdir
	@for temp in $(IGNORE); \
	do \
		if [ -f $(MAIN).$$temp ]; then mv $(MAIN).$$temp $(TEMP)/; fi; \
	done
	@mv $(FLAG) $(TEMP)

untempize: mkdir
	@touch $(TEMP)/$(FLAG)
	@mv $(TEMP)/* ./

mkdir:
	@mkdir -p $(TEMP)
