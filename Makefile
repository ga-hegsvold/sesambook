FILE = Sesambook

all: html pdf

pdf: $(FILE).pdf

$(FILE).pdf: $(FILE).fo
	fop -c fonts.xml $(FILE).fo -pdf $(FILE).pdf; rm $(FILE).fo

$(FILE).fo: $(FILE).xml
	xsltproc -o $(FILE).fo \
	--xinclude \
	--path .:xml \
	xsl/customization.FO.xsl $(FILE).xml

html: $(FILE).html

$(FILE).html:
	xsltproc -o $(FILE).html \
	--xinclude \
	--path .:xml \
	xsl/customization.HTML.xsl $(FILE).xml

clean:
	rm $(FILE).pdf \
	  $(FILE).fo \
	  $(FILE).html

