%{
  site_name: "Elixir Korea Blog",
  site_description: "한국 엘릭서 사용자 모임 블로그",
  author: "Elixir Korea",
  author_email: "-",
  base_url: "/",
  server_root: "https://elixir-korea.github.io/",
  date_format: "{WDfull}, {D} {Mshort} {YYYY}",
  preview_length: {:paragraphs, 1},
  plugins: [
    Serum.Plugins.TableOfContents,
    {Serum.Plugins.SitemapGenerator, args: [for: [:pages, :posts]]},
    {Serum.Plugins.LiveReloader, only: :dev}
  ],
  theme: Serum.Themes.Essence
}
