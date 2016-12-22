defmodule :release_tasks do
  def migrate do
    {:ok, _} = Application.ensure_all_started(:phoenix_env_settings)
    path = Application.app_dir(:phoenix_env_settings, "priv/repo/migrations")
    Ecto.Migrator.run(PhoenixEnvSettings.Repo, path, :up, all: true)
    :init.stop()
  end
end
