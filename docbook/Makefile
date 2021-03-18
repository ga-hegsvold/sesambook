FILE = Sesambook
OUT_PATH = out

all: html pdf

pdf: $(OUT_PATH)/$(FILE).pdf

$(OUT_PATH)/$(FILE).pdf: $(FILE).fo
	fop -c fonts.xml $(FILE).fo -pdf $(OUT_PATH)/$(FILE).pdf; rm $(FILE).fo

$(FILE).fo: $(FILE).xml
	xsltproc -o $(FILE).fo \
	--xinclude \
	--path .:xml \
	xsl/customization.FO.xsl $(FILE).xml

html: $(OUT_PATH)/$(FILE).html

$(OUT_PATH)/$(FILE).html:
	xsltproc -o $(OUT_PATH)/$(FILE).html \
	--xinclude \
	--path .:xml \
	xsl/customization.HTML.xsl $(FILE).xml

clean:
	rm $(OUT_PATH)/$(FILE).pdf \
	  $(FILE).fo \
	  $(OUT_PATH)/$(FILE).html

