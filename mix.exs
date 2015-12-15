defmodule Plugs.Mixfile do
  use Mix.Project

  def project do
    [ app: :plugs,
      version: "0.0.5",
      elixir: "~> 1.0",
      name: "Plugs",
      deps: deps,
      package: package,
      description: description,
      docs: [readme: "README.md", main: "README"],
      test_coverage: [tool: ExCoveralls] ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:plug] ]
  end

  defp deps do
    [ { :cowboy, "~> 1.0.2" },
      { :plug, "~> 0.14.0" },
      { :ex_doc, "~> 0.8.0", only: :docs },
      { :earmark, "~> 0.1.17", only: :docs },
      { :excoveralls, "~> 0.3.11", only: :test } ]
  end

  defp description do
    """
    A collection of Plug middleware for web applications
    """
  end

  defp package do
    %{maintainers: ["Shane Logsdon", "Ryan S. Northrup"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sugar-framework/plugs",
               "Docs" => "http://sugar-framework.github.io/docs/api/plugs/"}}
  end
end
