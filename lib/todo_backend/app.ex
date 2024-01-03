defmodule TodoBackend.App do
  use Commanded.Application,
    otp_app: :todo_backend,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: TodoBackend.EventStore
    ]

  router(TodoBackend.Router)
end
