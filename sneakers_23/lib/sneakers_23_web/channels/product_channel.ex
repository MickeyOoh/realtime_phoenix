defmodule Sneakers23Web.ProductChannel do
  use Phoenix.Channel

  alias Sneakers23Web.{Endpoint, ProductView}

  def join("product:" <> _sku, %{}, socket) do
    IO.puts("join product:")
    {:ok, socket}
  end

  @doc """
    broadcast function
    This is a fairly interesting function because we're going
    to render our size selector HTML for a given product
  """
  def notify_product_released(product = %{id: id}) do
    size_html = Phoenix.View.render_to_string(
      ProductView,
      "_sizes.html",
      product: product
    )
    #IO.puts("notify id:#{id} #{inspect size_html} ")
    Endpoint.broadcast!("product:#{id}", "released", %{
      size_html: size_html
    })
  end

  def notify_item_stock_change(
      previous_item: %{available_count: old},
      current_item:  %{available_count: new, id: id, product_id: p_id}
  ) do
    case {
      ProductView.availability_to_level(old),
      ProductView.availability_to_level(new)
    } do
      {same, same} when same != "out" ->
        {:ok, :no_change}

      {_, new_level} ->
        Endpoint.broadcast!("product:#{p_id}", "stock_change", %{
          product_id: p_id,
          item_id: id,
          level: new_level
        })
        {:ok, :broadcast}
    end
  end
end
