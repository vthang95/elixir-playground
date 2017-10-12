up:
	docker-compose up -d
stop:
	docker-compose stop
app:
	docker rm -f condolavi_app; docker-compose run --name condolavi_app --rm -p 4000:4000 phoenix iex -S mix phx.server
bash:
	docker-compose run phoenix bash
