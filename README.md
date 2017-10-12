# Condolavi

To start your Phoenix server:

  * Make sure that your Docker is running. Run `make up` to pull images, start conatainers.
  * Run `make bash` to enter container bash shell.
  * Run `mix do deps.get, compile` to get hex dependencies then compile them.
  * Run `mix ecto.create && mix ecto.migrate` to create then migrate db.
  * Run `cd assets && yarn` to install node dependencies.
  * Start Phoenix endpoint with `mix phx.server`.

Now you can visit [`localhost:4000`](http://localhost:8080) from your browser.
