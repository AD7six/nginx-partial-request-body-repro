.PHONY: start
start: ## start the containers in the foreground
	docker-compose up

.PHONY: test
test: ## Emit a few test requests
	-curl --max-time 1 --data @tests/minimal.bin http://localhost/
	-curl --max-time 1 --data @tests/more-complete.bin http://localhost/
