build:
	docker build -t --no-cache jbzoo/unit

test:
	@echo -n "Test\t\t\t"
	@docker run jbzoo/unit --version --no-ansi
