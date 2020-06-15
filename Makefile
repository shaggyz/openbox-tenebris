PACKAGE=tenebris.obt
SOURCES=tenebris

build:  ## Creates the obt file
	make clean
	tar -zcvf ${PACKAGE} ${SOURCES}

clean: ## removes the obt file
	rm -f ${PACKAGE}

help: ## Show this help
	@echo "Makefile directives:\n"
	@grep '\#\#' Makefile | sed -e 's/\#\#/->/g'
	@echo ""
