PLANTUMLCLI := plantumlcli
DOT         := dot

PUMLS := $(shell ls *.puml 2> /dev/null || true)
PUML_PNGS  := $(addsuffix .puml.png, $(basename ${PUMLS}))
PUML_EPSS  := $(addsuffix .puml.eps, $(basename ${PUMLS}))
PUML_SVGS  := $(addsuffix .puml.svg, $(basename ${PUMLS}))

GVS     := $(shell ls *.gv 2> /dev/null || true)
GV_PNGS := $(addsuffix .gv.png, $(basename ${GVS}))
GV_EPSS := $(addsuffix .gv.eps, $(basename ${GVS}))
GV_SVGS := $(addsuffix .gv.svg, $(basename ${GVS}))

%.puml.png: %.puml
	$(PLANTUMLCLI) -t png -o $@ $<

%.puml.eps: %.puml
	$(PLANTUMLCLI) -t eps -o $@ $<

%.puml.svg: %.puml
	$(PLANTUMLCLI) -t svg -o $@ $<

%.gv.png: %.gv
	$(DOT) -Tpng -o"$@" "$<"

%.gv.eps: %.gv
	$(DOT) -Teps -o"$@" "$<"

%.gv.svg: %.gv
	$(DOT) -Tsvg -o"$@" "$<"


# 此处可以根据需要去掉不需要的格式
build: ${PUML_PNGS} ${PUML_EPSS} ${PUML_SVGS} ${GV_PNGS} ${GV_EPSS} ${GV_SVGS}

all: build

clean:
	rm -rf *.png *.eps *.svg
