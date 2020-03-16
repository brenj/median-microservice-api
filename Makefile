install:
	pip3 install --upgrade pip
	pip3 install -r requirements.txt

lint:
	docker run --rm -i hadolint/hadolint < Dockerfile
	pylint -d R0201,R0903 median/

microservice:
	honcho start

test:
	pip3 install -r test_requirements.txt
	nosetests median/

venv:
	python3 -m venv venv
