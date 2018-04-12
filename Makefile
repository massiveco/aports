
all: enable-edge-community
	cd stable && $(MAKE)
	cd testing && $(MAKE)

enable-edge-community:
	sudo su -c 'echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories'
	sudo apk update
	sudo apk add go
	CGO_ENABLED=0 sudo -E go install -a -installsuffix cgo std


local:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/tmp/packages --entrypoint=sh -u alpine massiveco/docker-alpine-sdk -c 'cd /apk && make all'

shell:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages -u alpine massiveco/docker-alpine-sdk