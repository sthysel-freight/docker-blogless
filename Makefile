.PHONY: all build testrun push

all: build

build: 
	docker build -t sthysel/blogless .

shell: build
	docker run -it --rm sthysel/blogless bash

serve:
	docker run --rm -p 8888:80 -v ${PWD}:/blogs sthysel/blogless

push:
	docker push sthysel/blogless

