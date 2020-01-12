defmodule ElixirKoreaBlog.MixFile do
  use Mix.Project

  def project do
    [
      app: :elixir_korea_blog,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  defp deps do
    [
      {:serum, "~> 1.4"},
      {:serum_theme_essence, "~> 1.0"},
      # Temporary workaround to prevent breaking Timex
      {:gettext, "0.17.1"}
    ]
  end
end
