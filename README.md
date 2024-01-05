# TodoBackend

To start your Phoenix server:
  * Install the dependencies with `mix deps.get`
  * Start the container by running `docker-compose up`
  * Run the migration with `mix ecto.migrate`
  * Initialize the db and eventstore tables running `mix event_store.init` and `mix event_store.create`
  * Start Phoenix endpoint with `mix phx.server`