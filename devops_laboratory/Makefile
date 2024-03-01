IMAGE_NAME=devops-lab

.PHONY: build run test clean

build:
	docker build -t $(IMAGE_NAME):latest .

run:
	docker run --rm -p 5000:5000 $(IMAGE_NAME):latest

clean:
	docker rmi $(IMAGE_NAME):latest || true
