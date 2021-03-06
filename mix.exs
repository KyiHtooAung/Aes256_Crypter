defmodule Aes256Crypter.MixProject do
  use Mix.Project

  def project do
    [
      app: :aes256_crypter,
      version: "0.1.0",
      elixir: "~> 1.6.6",
      description: "Aes 256 encryption/decryption using Key Derivation with salt implementation in Elixir.",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:pbkdf2, "~> 2.0.0"},
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp package do
    [ name: :data_crypter,
        files: ["lib", "mix.exs", "README*"],
        maintainers: ["Kyi Htoo Aung"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/KyiHtooAung/Aes256_Crypter"} 
    ] 
  end
end
