PLANTUMLCLI := plantumlcli

PUMLS := $(shell ls *.puml 2> /dev/null || true)
PNGS  := $(addsuffix .png, $(basename ${PUMLS}))
EPSS  := $(addsuffix .eps, $(basename ${PUMLS}))
SVGS  := $(addsuffix .svg, $(basename ${PUMLS}))

%.png: %.puml
	$(PLANTUMLCLI) -t png -o $@ $<

%.eps: %.puml
	$(PLANTUMLCLI) -t eps -o $@ $<

%.svg: %.puml
	$(PLANTUMLCLI) -t svg -o $@ $<

# 此处可以根据需要去掉不需要的格式
build: ${PNGS} ${EPSS} ${SVGS}

all: build

clean:
	rm -rf *.png *.eps *.svg
