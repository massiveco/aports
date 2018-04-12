
all:
	cd stable && $(MAKE) all
	cd testing && $(MAKE) all

local:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/tmp/packages --entrypoint=sh -u alpine massiveco/docker-alpine-sdk -c 'cd /apk && make all'

shell:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages -u alpine massiveco/docker-alpine-sdk