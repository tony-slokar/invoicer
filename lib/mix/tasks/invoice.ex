defmodule Mix.Tasks.Invoice do
  @moduledoc """
  Generate an invoice: `mix invoice`
  """
  use Mix.Task

  def run(_) do
    IO.puts(Invoicer.getHTMLInvoice())
  end

end
