defmodule Exsyslog.Mixfile do
  use Mix.Project

  def project do
    [app: :exsyslog,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :syslog]]
  end

  defp description do
    """
    Exsyslog is a Elixir Logger custom backend to syslog.
    """
  end

  defp package do
    [ files: ["lib", "mix.exs", "README.md", "LICENSE"],
      contributors: ["Bruno Tavares"],
      licenses: ["MIT"],
      links: %{"GitHub": "https://github.com/22cans/exsyslog"} ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:syslog, "~> 1.0.2"}]
  end
end
