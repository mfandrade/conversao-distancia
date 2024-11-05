build:
	docker image build -t xxx .

run:
	docker container run -p 5000:5000 xxx

clean:
	@if [ -n "$(VIRTUAL_ENV)" ]; then \
		deactivate; \
	fi
	@rm -rf __pycache__ */__pycache__ *.pyc *.pyo
