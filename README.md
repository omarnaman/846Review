# A Tex template for the weekly paper reviews of CS846 (Empirical Software Engineering)

## Dependencies
This template depends on the [acmart](https://ctan.org/pkg/acmart) package, so make sure it's installed before compiling.

## How to
* Modify the template with the appropriate information:
    1. Name and Email
    2. Week number
    3. Your review

* Run `make F=<filename>` or use `pdflatex <filename>.tex` to generate the pdf.
  * If your `.tex` file is named `review1.tex` then the variable would be `F=review1` without the extension.
  * The variable defaults to `template` if it was not specified in the call.

* You can also find the template available on [overleaf.com](https://www.overleaf.com/read/rqhmmmngvwzx).

