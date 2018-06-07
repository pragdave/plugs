defmodule Plugs.Mixfile do
  use Mix.Project

  def project do
    [
      app:     :plugs,
      version: "0.1.1",
      elixir:  "~> 1.5",
      name:    "Plugs",
      deps:    deps(),
      package: package(),
      docs:    [
        readme: "README.md",
        main:   "README"
      ],
      description: description(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
       applications: [:plug]
    ]
  end

  defp deps do
    [
      { :cowboy,      ">= 1.0.0" },
      { :plug,        ">= 1.0.0" },
      { :ex_doc,      ">= 0.8.0", only: :docs },
      { :earmark,     ">= 0.1.0", only: :docs },
      { :excoveralls, ">= 0.3.0", only: :test }
    ]
  end

  defp description do
    """
    A collection of Plug middleware for web applications
    """
  end

  defp package do
    %{
      maintainers: ["Shane Logsdon", "Ryan S. Northrup"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/sugar-framework/plugs",
        "Docs" => "http://sugar-framework.github.io/docs/api/plugs/"
      }
    }
  end
end
