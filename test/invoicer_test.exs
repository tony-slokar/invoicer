defmodule InvoicerTest do
  use ExUnit.Case
  doctest Invoicer

  test "greets the world" do
    assert Invoicer.hello() == :world
  end

  test "make an HTML invoice" do
    assert Invoicer.getHTMLInvoice() == "fake invoice"
  end
end
