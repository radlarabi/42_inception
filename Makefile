all:
	docker-compose -f  srcs/docker-compose.yml up --build

stop:
	docker-compose -f  srcs/docker-compose.yml down

re: stop all