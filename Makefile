IMAGE_NAME=bashcat
TARGETS=shell app

#
# develop
#

images:
	@for target in $(TARGETS); \
	do docker build --target $$target -t $(IMAGE_NAME):$$target .; \
	done

run:
	docker run --rm -i $(IMAGE_NAME):app /app/bin/$(IMAGE_NAME)

test:
	docker run --rm -v $(PWD):/app $(IMAGE_NAME):shell ./test/suite

shell:
	docker run -it --rm -v $(PWD):/app $(IMAGE_NAME):shell /bin/sh

#
# deploy
#

artifacts:
	make images test >&2 && echo $(IMAGE_NAME):app

#
# utilities
#

phony:
	@sed -ne 's/^\([[:alnum:]_-]\{1,\}\):.*/	\1 \\/p' Makefile | sed -e '$$s/ \\//'

.PHONY: \
	images \
	run \
	test \
	lint \
	fix \
	shell \
	artifacts \
	phony