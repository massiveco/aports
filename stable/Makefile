export REPODEST=/tmp/packages

PACKAGES := $(wildcard */.)

$(PACKAGES):
	cd $@ && abuild -r

all: $(PACKAGES)

.PHONY: all $(PACKAGES)