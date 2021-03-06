defmodule LogIts.Mixfile do
  use Mix.Project

  def project do
    [
      app: :logits,
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
      mod: {LogIts.Application, []}
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
      {:aws, "~> 0.5.0"},

      {:httpoison, "~> 0.12.0", override: true},
      {:poison, "~> 3.1", override: true},

      # {:httpotion, "> 0.0.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
