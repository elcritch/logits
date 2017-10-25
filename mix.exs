defmodule DockerLogger.Mixfile do
  use Mix.Project

  def project do
    [
      app: :docker_logger,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DockerLogger.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dockerex, "~> 0.1.0"},
      {:socket, "~> 0.3"},
      # {:procket, "~> 0.9.3"},
      {:shotgun, "~> 0.3.0"},
      {:exactor, "~> 2.2.3", warn_missing: false},
      # {:httpotion, "> 0.0.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
