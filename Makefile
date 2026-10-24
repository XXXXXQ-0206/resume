PDF := resume-demo.pdf
SOURCES := resume-cn.typ chicv.typ fontawesome.typ 证件照-黑.jpg fonts/FontAwesome6.otf

.PHONY: all clean check-fonts

AVAILABLE_FONTS := $(shell typst fonts --font-path fonts)
MISSING_FONTS := \
	$(foreach font,SimSun FangSong STFangsong,$(if $(findstring $(font),$(AVAILABLE_FONTS)),,$(font))) \
	$(if $(findstring Font Awesome 6 Free Solid,$(AVAILABLE_FONTS)),,Font Awesome 6 Free Solid)

all: check-fonts $(PDF)

check-fonts:
	$(if $(strip $(MISSING_FONTS)),$(error Missing required fonts: $(MISSING_FONTS)))
	@:

$(PDF): $(SOURCES)
	typst compile resume-cn.typ $@ --font-path fonts

clean:
	rm -f $(PDF)
