build:
	docker build -t jbzoo/unit .

test:
	docker run jbzoo/unit --version
