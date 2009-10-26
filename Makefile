SOURCE="lkdd"

all:
# 	Convert jpeg images into eps
	@echo -n "Converting images..."
	@convert arch1.jpg arch1.eps
	@convert arch2.jpg arch2.eps
	@convert memory.gif memory.eps
	@convert physical.png physical.eps
	@convert kernel.gif kernel.eps
	@convert address_div.jpg address_div.eps
	@convert emacs.png emacs.eps
	@echo "DONE!"

	@echo -n "Converting from latex to dvi..."
	@latex ${SOURCE}.tex &> /dev/null
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
