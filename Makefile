SOURCE="lkdd"

all:
# 	Convert jpeg images into eps
	convert arch1.jpg arch1.eps
	convert arch2.jpg arch2.eps

	@echo -n "Converting from latex to dvi..."
# 	@latex ${SOURCE}.tex &> /dev/null
	latex ${SOURCE}.tex
	@echo "DONE!"

	@echo -n "Converting from dvi to ps..."
	@dvips ${SOURCE}.dvi &> /dev/null
	@echo "DONE!"

	@echo -n "Converting from ps to pdf..."
	@ps2pdf ${SOURCE}.ps &> /dev/null
	@echo "DONE!"

	@echo -n "Cleaning temporary files..."
	@rm -f *aux *dvi *log *out *ps *snm *toc *nav *~
	@echo "DONE!"

.PHONY: clean
clean:
	@echo -n "Cleaning temporary files..."
	@rm -f *aux *dvi *log *out *pdf *ps *snm *toc *nav *~
	@echo "DONE!"
