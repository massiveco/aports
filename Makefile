
include testing/Makefile

local:
	docker run --rm -it -v $(shell pwd):/apk --entrypoint=sh -u alpine massiveco/docker-alpine-sdk -c 'cd /apk && make testing'

shell-env:
	docker run --rm -it -v $(shell pwd):/apk -u alpine massiveco/docker-alpine-sdk