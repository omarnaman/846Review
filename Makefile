F?=template
DIR=$(F)_out
pdf: $(F).tex
	[ -d $(DIR) ] || mkdir $(DIR)
	[ -d $(DIR) ]
	pdflatex -output-directory=$(DIR) $(F).tex
	mv $(DIR)/$(F).pdf .
