
include testing/Makefile

all: enable-edge-community clean
	cd staging && $(MAKE)
	cd testing && $(MAKE)

clean:
	rm -fR packages/

enable-edge-community:
	sudo su -c 'echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories'
	sudo apk update

local:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages --entrypoint=sh -u alpine massiveco/docker-alpine-sdk -c 'cd /apk && make all'

shell:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages -u alpine massiveco/docker-alpine-sdk