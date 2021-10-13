up:
	@docker-compose build
	@docker-compose up -d serve_rest_api
	@sleep 10
	@docker-compose up -d newman

api_log:
	@docker container logs -f serve_rest_api

newman_log:
	@docker container logs -f newman

down:
	@docker-compose down

rm:
	@docker image rmi paulogoncalvesbh/serverest:latest
	@docker image rmi postman/newman_alpine33