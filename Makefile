all: build

build:
	@docker build --tag=gnh1201/openfire .

release: build
	@docker build --tag=gnh1201/openfire:$(shell cat VERSION) .
