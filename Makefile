F?=template
F1?=template
F2?=second_page

# Functions

define generate_pdf
	
	$(eval DIR := $1_out)
	$(eval NAME := $1)

	[ -d $(DIR) ] || mkdir $(DIR)
	[ -d $(DIR) ]
	pdflatex -output-directory=$(DIR) $(NAME).tex
	mv $(DIR)/$(NAME).pdf .

endef


pdf: $(F).tex
	$(call generate_pdf,$(F))
	

# TODO: Don't compile a file if no new changes were introduced 
both: $(F1).tex $(F2).tex
	$(call generate_pdf,$(F1))
	$(call generate_pdf,$(F2))
	pdfunite $(F1).pdf $(F2).pdf WeekReview.pdf
