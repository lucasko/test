
build:
	docker build -t jenkinsci-slave:1.0 .

run:
	docker run --rm -it -p 8022:22 jenkinsci-slave:1.0

bash:
	docker run --rm -it -p 8022:22 jenkinsci-slave:1.0 bash

push:
	docker tag jenkinsci-slave:1.0 lucasko/jenkinsci-slave:1.0
	docker push lucasko/jenkinsci-slave:1.0
