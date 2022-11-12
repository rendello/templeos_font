BITMAPFONT2OTB=bitmapfont2otb
PYTHONPATH:=/opt/lib/python3/dist-packages/:/usr/lib/python3/dist-packages/:$(PYTHONPATH)
FONTNAME=templeos_font

templeos_font.bdf:
	git reset --hard
	git apply $(FONTNAME).bdf.patch


$(FONTNAME).otf: $(FONTNAME).bdf
	PYTHONPATH=$(PYTHONPATH) $(BITMAPFONT2OTB) $< $@

$(FONTNAME).ttf: $(FONTNAME).bdf
	PYTHONPATH=$(PYTHONPATH) $(BITMAPFONT2OTB) $< $@

$(FONTNAME).woff: $(FONTNAME)_opentype
	sfnt2woff $(FONTNAME).ttf

$(FONTNAME).woff2: $(FONTNAME)_opentype
	woff2_compress $(FONTNAME).ttf

.PHONY:
$(FONTNAME)_opentype: $(FONTNAME).ttf $(FONTNAME).otf

.PHONY:
$(FONTNAME)_webfonts: $(FONTNAME).woff $(FONTNAME).woff2

.PHONY:
all:
	$(MAKE) $(FONTNAME)_opentype
	$(MAKE) $(FONTNAME)_webfonts
