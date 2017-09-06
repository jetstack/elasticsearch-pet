IMAGE_NAME=simonswine/elasticsearch-pet
IMAGE_TAG=5.5.0
REPO=$(IMAGE_NAME):$(IMAGE_TAG)

build:
	docker build -t $(REPO) .

push: build
	docker push $(REPO)

