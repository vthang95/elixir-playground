up:
	docker-compose up -d
stop:
	docker-compose stop
	docker rm -f $(docker ps -a | grep pancakev2_running_app | awk '{print $1}') || echo "\n\n >bash stoped before\n\n"
app:
	docker rm -f condolavi_app; docker-compose run --name condolavi_app --rm -p 8080:4000 phoenix iex -S mix phx.server
bash:
	docker-compose run phoenix bash
