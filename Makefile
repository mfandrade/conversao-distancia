build:
	docker image build -t xxx .

run:
	docker container run -p 5000:5000 xxx

clean:
	deactivate
