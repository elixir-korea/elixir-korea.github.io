defmodule ElixirKoreaBlog.OpenGraphHelper do
  @doc "Gets the contents of `og:title` property for the given `page`."
  @spec og_title(map(), map()) :: binary()
  def og_title(page, site)
  def og_title(%{url: "/index.html"}, site), do: site.description
  def og_title(%{title: title}, site), do: "#{title} - #{site.description}"

  @doc """
  Gets the contents of `og_description` property for the given `page`.

  It will use the page's preview(summary) text when possible.
  """
  @spec og_description(map()) :: binary()
  def og_description(page)
  def og_description(%{type: :post, preview: preview}), do: preview
  def og_description(_page), do: "한국 엘릭서 사용자 모임, Elixir Korea의 블로그입니다."
end
