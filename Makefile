
include testing/Makefile

local:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages --entrypoint=sh -u alpine massiveco/docker-alpine-sdk -c 'cd /apk && make testing'

shell:
	docker run --rm -it -v $(shell pwd):/apk -v $(shell pwd)/packages:/home/alpine/packages -u alpine massiveco/docker-alpine-sdk